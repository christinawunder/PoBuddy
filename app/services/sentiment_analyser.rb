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
    @result = {
      "document_tone": {
        "tones": [
          {
            "score": 0.6165,
            "tone_id": "sadness",
            "tone_name": "Sadness"
          },
          {
            "score": 0.829888,
            "tone_id": "analytical",
            "tone_name": "Analytical"
          }
        ]
      }
    }
    # @result = client.tone(
    #   tone_input: { text: text },
    #   content_type: "application/json"
    # )
  end

  def evaluate_result

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
    # COMES FROM YOUR SECRETS (ON Monday)
  end

  def url
    # COMES ON Monday
  end
end
