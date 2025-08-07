# Use a imagem oficial do Keycloak
FROM quay.io/keycloak/keycloak:22.0.5

# Define o diretório de trabalho
WORKDIR /opt/keycloak

# Adiciona o comando para inicializar o Keycloak com o modo de distribuição
ENTRYPOINT ["./bin/kc.sh"]

# Comando para iniciar o servidor
CMD ["start-dev"]

# Expõe a porta 8080
EXPOSE 8080

# Configura as variáveis de ambiente para o usuário admin
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin