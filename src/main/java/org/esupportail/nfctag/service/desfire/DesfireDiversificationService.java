/**
 * Licensed to ESUP-Portail under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * ESUP-Portail licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.esupportail.nfctag.service.desfire;

import org.esupportail.nfctag.service.api.TagWriteApi;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DesfireDiversificationService implements DesfireKeyService {

	protected final static Logger log = LoggerFactory.getLogger(DesfireDiversificationService.class);

	String baseKey;
	
	TagWriteApi tagWriteApi;

	public void setBaseKey(String baseKey) {
		this.baseKey = baseKey;
	}

	public void setTagWriteApi(TagWriteApi tagWriteApi) {
		this.tagWriteApi = tagWriteApi;
	}

	@Override
	public String getKeyFromCsn(String csn) {

		String diversifiedKey = null;
		
		String data4diversification = "";
		if(tagWriteApi == null) {
			log.info(String.format("Call key diversification with CSN %s", csn));
			data4diversification = csn; 
		} else {
			data4diversification = tagWriteApi.getIdFromCsn(csn);
		}
		
		byte[] baseKeyBytes = DesfireUtils.hexStringToByteArray(baseKey);
		byte[] diversificationInput = DesfireUtils.hexStringToByteArray(data4diversification);
		int diversificationLength = diversificationInput.length;
		
		DesfireDiversification desfireDiversification = new DesfireDiversification();
		
		try {
			byte[] diversifiedKeyBytes = desfireDiversification.diversificationAES128(baseKeyBytes, diversificationInput, diversificationLength);
			diversifiedKey = DesfireUtils.byteArrayToHexString(diversifiedKeyBytes);
		} catch (Exception e) {
			throw new RuntimeException("Exception when diversify key !", e);
		}
		log.info(String.format("Diversified Key : %s", diversifiedKey));
		
		return diversifiedKey;
	}

}
