# Proyecto Intermodular Losenxu 2

## Sesión de Brainstorming - 27/10

### 🎯 Objetivo Principal
Crear una infraestructura de red educativa con servicios esenciales para demostración y uso académico.

### 🏗️ Arquitectura y Infraestructura
- **Red con Docker**: Configurar red virtualizada con Kathara
- **Nodos**: Implementar nodos simples + una MV Ubuntu para demostración final
- **Orquestación**: Administración de contenedores mediante Kubernetes (k8s)

### 🗄️ Servicios a Implementar

#### Base de Datos
- Servidor SQL de prueba
- Servidor NoSQL de prueba 
- Configuración de cluster para SGBD

#### Servicios Web
- Servidor Apache2/Nginx (similar a Servus) para uso académico
- Web/Blog para consultar partidos de prueba alojados en SGBD
- Funcionalidad de blog personal para cada usuario

#### Autenticación y Seguridad
- Servidor OpenLDAP para gestión y autenticación de usuarios
- Implementación de cifrado (TLS, etc.)
- Reglas de IPTables/Firewall
- Enfoque en seguridad y alta disponibilidad

#### Almacenamiento y Monitorización
- Servidor NFS (NAS)
- Prometheus en cada nodo para métricas
- Grafana para visualización de servicios y nodos

### 🌐 Despliegue y Operaciones
- **Entorno inicial**: Implementación local
- **Alternativa**: Despliegue en servidor de clase con IP pública
- **Soporte**: Sistema de canal de soporte (chat, correo, ticketing - por definir)
- **Emplear metodologia Scrum**
- **Getting things done**

### 📋 Metodología y Estándares
- Guionización y automatización de procesos
- Documentación exhaustiva
- Uso de herramientas visuales (Excalidraw)
- Seguimiento de estándares (bibliografía, seguridad, etc.)
- Componente empresarial/organizacional

---
*Nota: Estructura pendiente de desarrollo y priorización*



## Estructura principal

python3 -m pip install git+https://github.com/saghul/pyuv@master#egg=pyuv