# Usar una imagen base multi-arch
FROM --platform=$TARGETPLATFORM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependencias para ambas arquitecturas
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    git \
    curl \
    iproute2 \
    iputils-ping \
    net-tools \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Instalar Kathara
RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install --no-cache-dir kathara

# Crear wrapper ejecutable
RUN echo '#!/bin/bash\npython3 -m kathara "$@"' > /usr/local/bin/kathara
RUN chmod +x /usr/local/bin/kathara

# Verificar instalación
RUN kathara --version

# Comando por defecto robusto
CMD ["sleep", "infinity"]