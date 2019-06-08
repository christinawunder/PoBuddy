class SentimentAnalyser
  def initializer
    set_client
  end

  def call(text)
    @text = text
    perform_request
    evaluate_result
    expose_result
  end

  private

  attr_reader :client, :result, :text

  def perform_request
    @result = client.tone(
      tone_input: { text: "Team, I know that times are tough! Product sales have been disappointing for the past three quarters. We have a competitive product, but we need to do a better job of selling it!" },
      content_type: "application/json"
    )
    # @result = {
    #   "document_tone": {
    #     "tones": [
    #       {
    #         "score": 0.6165,
    #         "tone_id": "sadness",
    #         "tone_name": "Sadness"
    #       },
    #       {
    #         "score": 0.829888,
    #         "tone_id": "analytical",
    #         "tone_name": "Analytical"
    #       }
    #     ]
    #   }
    # }
  end

  def evaluate_result
    #
  end

  def expose_result
    result
  end

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
