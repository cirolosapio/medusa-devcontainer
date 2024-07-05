cd .devcontainer

if [ -f server.key ]; then
  echo "server.key already exists"
  exit 0
fi

# Generate the server private key
openssl genpkey -algorithm RSA -out server.key

# Secure the server key
chmod 600 server.key

# Generate a self-signed certificate
openssl req -new -x509 -days 365 -key server.key -out server.crt -subj "/CN=localhost"
