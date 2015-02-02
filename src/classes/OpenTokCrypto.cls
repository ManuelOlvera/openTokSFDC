public with sharing class OpenTokCrypto {
	public OpenTokCrypto() {
		
	}
	public static String signData(String data, String key){
        String algorithmName = 'HMacSHA1';
      	Blob mac = Crypto.generateMac(algorithmName,  Blob.valueOf(data), 
                                                    Blob.valueOf(key));
      	String macUrl = EncodingUtil.urlEncode(EncodingUtil.base64Encode(mac), 'UTF-8');
        return macUrl;
    }
}