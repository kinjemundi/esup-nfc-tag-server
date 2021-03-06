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
package org.esupportail.nfctag.web.manager;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.esupportail.nfctag.domain.ApplisExtApiForm;
import org.esupportail.nfctag.domain.Application;
import org.esupportail.nfctag.domain.TagIdCheckApiForm;
import org.esupportail.nfctag.service.ApplisExtService;
import org.esupportail.nfctag.service.NfcAuthConfigService;
import org.esupportail.nfctag.service.TagIdCheckService;
import org.esupportail.nfctag.service.api.NfcAuthConfig;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/manager/applications")
@Controller
@RooWebScaffold(path = "manager/applications", formBackingObject = Application.class)
public class ApplicationController {
	
	@Resource
	ApplisExtService applisExtService;
	
	@Resource
	TagIdCheckService tagIdCheckService;
	
	@Resource
	NfcAuthConfigService nfcAuthConfigService;
	
	@ModelAttribute("extApis")
	public List<ApplisExtApiForm> getApplisExtApiForms() {
		return applisExtService.getApplisExtApiForms();
	}
	
	@ModelAttribute("tagIdChecks")
	public List<TagIdCheckApiForm> getTagIdCheckApiForms() {
		return tagIdCheckService.getTagIdCheckApiForms();
	}
	
	@ModelAttribute("nfcAuthConfigs")
	public List<NfcAuthConfig> getNfcAuthConfigs() {
		return nfcAuthConfigService.getNfcAuthConfigs();
	}
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String create(@Valid Application application, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, application);
            return "manager/applications/create";
        }
        uiModel.asMap().clear();
        application.setActive(true);
        application.persist();
        return "redirect:/manager/applications/";
    }

}
