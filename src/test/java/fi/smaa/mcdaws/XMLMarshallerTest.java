package fi.smaa.mcdaws;

import static org.junit.Assert.*;

import java.io.IOException;
import java.net.URL;

import javax.xml.transform.TransformerException;

import org.junit.Test;

import com.google.common.base.Charsets;
import com.google.common.io.Resources;

public class XMLMarshallerTest {
	
	@Test
	public void testXmcdaToContents() throws IOException, TransformerException {
		URL url = Resources.getResource("alternatives.xml");
		String input = Resources.toString(url, Charsets.UTF_8);
		String outp = XMLMarshaller.xmcdaToContents(input);
		assertEquals("<alternatives", outp.substring(0, 13));
	}

}
