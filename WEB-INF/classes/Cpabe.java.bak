package cpabe;
import it.unisa.dia.gas.jpbc.Element;
import it.unisa.dia.gas.jpbc.CurveParameters;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.math.*;
import app.Identity;
import java.util.*;
import java.security.SecureRandom;
import java.security.*;
import java.security.spec.*;
import org.apache.commons.lang3.RandomStringUtils;
import cpabe.policy.LangPolicy;
import bswabe.Bswabe;
import bswabe.BswabeCph;
import bswabe.BswabeCphKey;
import bswabe.BswabeElementBoolean;
import bswabe.BswabeMsk;
import bswabe.BswabePrv;
import it.unisa.dia.gas.jpbc.Pairing;
import bswabe.BswabePub;
import it.unisa.dia.gas.jpbc.Field;
import bswabe.SerializeUtils;
import it.unisa.dia.gas.plaf.jpbc.pairing.PairingFactory;
import org.apache.commons.lang3.RandomStringUtils;
public class Cpabe {

	/**
	 * @param args
	 * @author Junwei Wang(wakemecn@gmail.com)
	 */
		String pub_bYte, msk_bYte,prv_bYte;
		static String ck;
		static Element skt;
		public static Field G1;
	public static Field Zr;
	public void setup(String pubfile, String mskfile) throws IOException,
			ClassNotFoundException {
		byte[] pub_byte, msk_byte;
		BswabePub pub = new BswabePub();
		BswabeMsk msk = new BswabeMsk();
		Bswabe.setup(pub, msk);
		pub_byte = SerializeUtils.serializeBswabePub(pub);
		//Common.spitFile(pubfile, pub_byte);
		msk_byte = SerializeUtils.serializeBswabeMsk(msk);
		//Common.spitFile(mskfile, msk_byte);
	}

	public void keygen(String pubfile, String prvfile, String mskfile,
			String attr_str) throws NoSuchAlgorithmException, IOException {
		BswabePub pub;
		BswabeMsk msk;
		byte[] pub_byte, msk_byte, prv_byte;

		/* get BswabePub from pubfile */
		pub_byte = Common.suckFile(pubfile);
		pub = SerializeUtils.unserializeBswabePub(pub_byte);

		/* get BswabeMsk from mskfile */
		msk_byte = Common.suckFile(mskfile);
		msk = SerializeUtils.unserializeBswabeMsk(pub, msk_byte);

		String[] attr_arr = LangPolicy.parseAttribute(attr_str);
		BswabePrv prv = Bswabe.keygen(pub, msk, attr_arr);

		/* store BswabePrv into prvfile */
		prv_byte = SerializeUtils.serializeBswabePrv(prv);
		Common.spitFile(prvfile, prv_byte);
	}

	public void enc(String pubfile, String policy, String inputfile,
			String encfile) throws Exception {
		BswabePub pub;
		BswabeCph cph;
		BswabeCphKey keyCph;
		byte[] plt;
		byte[] cphBuf;
		byte[] aesBuf;
		byte[] pub_byte;
		Element m;

		/* get BswabePub from pubfile */
		pub_byte = Common.suckFile(pubfile);
		pub = SerializeUtils.unserializeBswabePub(pub_byte);

		keyCph = Bswabe.enc(pub, policy);
		cph = keyCph.cph;
		m = keyCph.key;

		if (cph == null) {
			System.out.println("Error happed in enc");
			System.exit(0);
		}

		cphBuf = SerializeUtils.bswabeCphSerialize(cph);

		/* read file to encrypted */
		plt = Common.suckFile(inputfile);
		aesBuf = ABE.encrypt(m.toBytes(), plt);
		// PrintArr("element: ", m.toBytes());
		Common.writeCpabeFile(encfile, m.toBytes(), cphBuf, aesBuf);
	}

	public void dec(String pubfile, String prvfile, String encfile,
			String decfile) throws Exception {
		byte[] aesBuf, cphBuf, mBuf;
		byte[] plt;
		byte[] prv_byte;
		byte[] pub_byte;
		byte[][] tmp;
		BswabeCph cph;
		BswabePrv prv;
		BswabePub pub;

		/* get BswabePub from pubfile */
		pub_byte = Common.suckFile(pubfile);
		pub = SerializeUtils.unserializeBswabePub(pub_byte);

		/* read ciphertext */
		tmp = Common.readCpabeFile(encfile);
		aesBuf = tmp[0];
		cphBuf = tmp[1];
		mBuf = tmp[2];
		cph = SerializeUtils.bswabeCphUnserialize(pub, cphBuf);

		/* get BswabePrv form prvfile */
		prv_byte = Common.suckFile(prvfile);
		prv = SerializeUtils.unserializeBswabePrv(pub, prv_byte);

		BswabeElementBoolean beb = Bswabe.dec(pub, prv, cph);
		if (beb.b) {
			// the right way
			// plt = ABECoder.decrypt(beb.e.toBytes(), aesBuf);
			
			plt = ABE.decrypt(mBuf, aesBuf);
			Common.spitFile(decfile, plt);
		} else {
			System.exit(0);
		}
	}
public void setUp(){
 KeyPairGenerator kpg;
 try{
 kpg = KeyPairGenerator.getInstance("EC","SunEC");
 ECGenParameterSpec ecsp;
 ecsp = new ECGenParameterSpec("sect163k1");
 
 kpg.initialize(ecsp);

 KeyPair kp = kpg.genKeyPair();
 PrivateKey privKey = kp.getPrivate();
 PublicKey pubKey = kp.getPublic();
 }catch(Exception e){}
 }


public String getPublicKey(){
RandomStringUtils.random(4, "0123456789abcdef");
pub_bYte= new String(Long.toHexString(Double.doubleToLongBits(Math.random())));
return pub_bYte;
}
 public String getMasterKey(){
RandomStringUtils.random(4, "0123456789abcdef");
msk_bYte=new String(Long.toHexString(Double.doubleToLongBits(Math.random())));
 return msk_bYte;
 }

  public String getPrivateKey(String attribute){
RandomStringUtils.random(4, attribute);
prv_bYte=new String(Long.toHexString(Double.doubleToLongBits(Math.random())));
 return prv_bYte;
 }
 public static String dec(String PK,String CT,String SK){
 
return ck; 
}



public static Element getTrapdoorKey(byte[] pk)
	{
Identity PK= new Identity("pk");
Pairing pairing = PairingFactory.getPairing("curve.properties");
Zr = pairing.getZr();
Element s = Zr.newRandomElement(); 
		Element skt = H1(PK.getIdentityBytes());
		skt.powZn(s);
		return skt;
	}


	public static Element H1(byte[] pk)
	{
Pairing pairing = PairingFactory.getPairing("curve.properties");
G1 = pairing.getG1();
		return G1.newRandomElement().setFromHash(pk, 0, pk.length);
	}




}
