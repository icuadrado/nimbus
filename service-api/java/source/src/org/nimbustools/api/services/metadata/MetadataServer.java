/*
 * Copyright 1999-2008 University of Chicago
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy
 * of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package org.nimbustools.api.services.metadata;

import org.nimbustools.api.repr.vm.NIC;
import org.nimbustools.api.repr.RequestInfo;
import org.nimbustools.api.repr.Caller;
import java.util.Calendar; 

public interface MetadataServer {

    public String getResponse(String target,
                              String remoteAddress)
            throws MetadataServerException,
                   MetadataServerUnauthorizedException;

    public String getCustomizationPath();

    public String getContactURL(NIC[] nics);
    
    public boolean isEnabled();

    public RequestInfo getRequestInfo(String RequestID, Caller caller);

    public Calendar getDestructionTime(String RequestID, Caller caller);
}
