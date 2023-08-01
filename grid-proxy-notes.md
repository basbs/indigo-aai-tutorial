## User Registration
- Get grid user certificates.
  - Do the SSO check using [this](https://cert-manager.com/customer/DFN/ssocheck/) link.
  - Digital certificate enrolment using [this](https://cert-manager.com/customer/DFN/idp/clientgeant) link.
  - Download the user certificate in `.p12` format. This contains both the certificate and the key.
  - For usage in the Grid, convert the certificate+key from its `.p12` format into two "pem" formatted files using `openssl`: 
    - `usercert.pem` containing just the certificate 
    - `userkey.pem` containing the password secured key. 
- User certificate DNs must be registered at a experiment VOMS.

## Get voms or grid proxy certificate.
- Authorization in present Grid applications is based on the concept of Virtual
Organizations (VO).
- VOs administer users, grant them permissions and establish
agreements with Resource Providers (RPs).
- Every user in a VO is then characterized by a set of attributes,
i.e. 3-tuples of the form (group, role, capability). 
- The combined values of all of these 3-tuples form unique attributes, the so-called Fully Qualified Attribute
Names (FQANs) ex: `/VO[/group[/subgroup(s)]][/Role=role][/Capability=cap]`.
- The grid-proxy is used in the handshake mechanism for GSI authentication (PKI mechanism) while the voms-extension has to be intended as a rule for specifying further properties/privileges that a given user is granted to access on the resource.
- The `voms-proxy-init` command contacts the VO's VOMS server the user belongs to, authenticates to it using the "standard" proxy certificate,receives the VO-specific attributes, and creates a new proxy with these attributes
appended.

## Usage of voms or grid proxy certificate.
- user certificate, grid-proxy-certificate or voms-proxy-certificates does contain a DN to help for an authentication.
- VO attributes was used for group membership verification but never used for any authorization decision.
- The AuthZ(capability) was never used (at least in mdc)


## Possible known issues 
The basic idea of X.509 proxy certificates [133, 132] is to provide single
sign-on and delegation while not exposing the private key corresponding
to a respective X.509 certificate.
- Unrestricted delegation
  - Full delegation to a delegatee. 
  - Time is the only restriction.
- Unconditional delegation
  - what is delegated -> in OAuth2.0 terms `scopes`
  - To whom -> `audience`
  - what context -> `subject? or time?`
- Multiple domain validity.
- Exposure to Theft.

## References
- https://inspirehep.net/literature/2644824 
