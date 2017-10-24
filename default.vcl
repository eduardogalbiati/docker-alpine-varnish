vcl 4.0;

backend default {
    .host = "189.89.206.43";
    .port = "https";     # This defaults to https when SSL
    .ssl = 1;          # Turn on SSL support
    .ssl_sni = 1;      # Use SNI extension
    .ssl_verify_peer = 1;  # Verify the peer's certificate chain
}