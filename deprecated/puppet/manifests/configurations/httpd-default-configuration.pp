#HTTPD
$sslEnabled = true
$sslExcludeList = ["127.0.0.1"]
$dropPacketsIfIPNotInSslExcludeList = false # true if the packets have to dropped when accessed over http

## HTTPS
$sslCertificateFile = "/etc/pki/tls/certs/localhost.crt"
$sslCertificateKeyFile = "/etc/pki/tls/private/localhost.key"
$sslCertificateChainFile = "" ## Leave blank if no chain certificate is required.
$sslCACertificateFile = "" ## Leave blank if no CA certificate is required.
$serverName = "" ##ServerName entry in httpd and ssl conf

## Authentication
$authenticationRequired = false     ## Specify if authentication is necessary.
$authenticationKey = "APIKey"             ## The key which is to be authenticated.
$authenticationValues = ["1234","5678"]           ## The values which must be compared for authentication.

## Use property httpsProxyRedirects to setup proxypass redirects
$authenticationExcludeHosts = []
$authenticationExcludeUrlPatterns = []