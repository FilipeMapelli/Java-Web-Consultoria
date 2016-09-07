package br.com.fms.consultoria.security;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.stereotype.Repository;

@Repository
public class CryptoSecurityAES {

	private static String IV = "AAAAAAAAAAAAAAAA";
	private String keyEncryption;

	public CryptoSecurityAES() {
		this.keyEncryption = "0123456789abcdef";
	}

	/*
	 * Encrypt or Decrypt
	 * 
	 * try {
	 * 
	 * byte[] textoencriptado = encrypt(textopuro, chaveencriptacao);
	 *  
	 * String textodecriptado = decrypt(textoencriptado, chaveencriptacao);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } 
	 */

	public String getKeyEncryption() {
		return keyEncryption;
	}

	public byte[] encrypt(String unencryptedText, String keyEncryption)
			throws Exception {
		Cipher encrypts = Cipher.getInstance("AES/CBC/PKCS5Padding", "SunJCE");
		SecretKeySpec key = new SecretKeySpec(keyEncryption.getBytes("UTF-8"),
				"AES");
		encrypts.init(Cipher.ENCRYPT_MODE, key,
				new IvParameterSpec(IV.getBytes("UTF-8")));
		return encrypts.doFinal(unencryptedText.getBytes("UTF-8"));
	}

	public String decrypt(byte[] encryptedText, String keyEncryption)
			throws Exception {
		Cipher decrypts = Cipher.getInstance("AES/CBC/PKCS5Padding", "SunJCE");
		SecretKeySpec key = new SecretKeySpec(keyEncryption.getBytes("UTF-8"),
				"AES");
		decrypts.init(Cipher.DECRYPT_MODE, key,
				new IvParameterSpec(IV.getBytes("UTF-8")));
		return new String(decrypts.doFinal(encryptedText), "UTF-8");
	}
}
