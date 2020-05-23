# saml-proxy-example
Example usage of [saml-proxy](https://github.com/lyang/saml-proxy)

## Usage
```
docker-compose up
```

It will start three containers: `nginx`, `saml-proxy` and `app`.

`nginx` will force all requests coming in to go through `saml-proxy` first, for authentication.

`saml-proxy` will facilitate SSO authentication and map SSO response attributes to http headers, which will then be forwarded by `nginx` to `app`.

`app` simply displays the forwarded headers in its greetings.

The IdP in this example is https://samltest.id/

You can test the flow by going to http://localhost/

## Note
In case the IdP no longer recognizes this SP, you will need to refresh sp-metadata. Options:

* Visit https://samltest.id/upload.php and fetch from https://raw.githubusercontent.com/lyang/saml-proxy-example/master/sp-metadata.xml
* Manually reupload `sp-metadata.xml` on https://samltest.id/upload.php

If you'd like to try with your own IdP/SP, I find https://www.samltool.com to be a quite helpful for generating IdP/SP metadata
