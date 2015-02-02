public class OpenTokViewController {

	public String sessionId { get; set; }
	public String apiKey { get; set; }
	public String token { get; set; }

	public OpenTokViewController(){
		apiKey = '45141552';
		sessionId = '2_MX40NTE0MTU1Mn5-MTQyMjg4NDQ0Njg2NX5xTDhJYnZ1blJkSkIwNTJsSlpiVCtNVG9-fg';
		token = generateToken(sessionId);
	}

	private String generateToken(String sessionId){
		OpenTokSession session = new OpenTokSession(sessionId, Integer.valueOf(apiKey), '295778b3f59c34a3f039c87f13aa94cc5e0b9aa1');
		OpenTokTokenOptions tokenOptions = new OpenTokTokenOptions(OpenTokRole.PUBLISHER, 30, UserInfo.getName());
		return session.generateToken(tokenOptions);
	}

}