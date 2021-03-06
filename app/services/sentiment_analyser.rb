class SentimentAnalyser
  def initialize
    set_client
  end

  def call(text)
    @text = text
    perform_request if @text != ""
  end

  private

  attr_reader :client, :result, :text

  def perform_request
    tone = client.tone(
      tone_input: { text: @text },
      content_type: "application/json"
    )

    result = JSON.pretty_generate(tone.result)
    analysis = JSON.parse(result)

    return analysis["document_tone"]["tones"].map do |t|
      t["tone_id"]
    end
  #  return @result.result["document_tone"]["tones"][0]["tone_id"]
  end
# curl -X POST -u "apikey:B4B2kwcx3icc5ehW_Avql-104zj2E28JqKwJ7QFeP1IF" \
# --header "Content-Type: application/json" \
# --data-binary @tone_test.json \
# "https://gateway-fra.watsonplatform.net/tone-analyzer/api/v3/tone?version=2017-09-21"

  def set_client
    @client = IBMWatson::ToneAnalyzerV3.new(
      version: "2017-09-21",
      iam_apikey: api_key,
      url: url
    )
  end

  def api_key
    ENV['IBM_API']
  end

  def url
    'https://gateway-fra.watsonplatform.net/tone-analyzer/api'
  end
end
