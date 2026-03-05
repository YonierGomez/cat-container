# 🐱 Container Cat

[![Docker Pulls](https://img.shields.io/docker/pulls/neytor/catcontainer)](https://hub.docker.com/r/neytor/catcontainer)
[![Docker Image Size](https://img.shields.io/docker/image-size/neytor/catcontainer/latest)](https://hub.docker.com/r/neytor/catcontainer)
[![GitHub Release](https://img.shields.io/github/v/release/YonierGomez/cat-container)](https://github.com/YonierGomez/cat-container/releases)
[![GitHub Stars](https://img.shields.io/github/stars/YonierGomez/cat-container)](https://github.com/YonierGomez/cat-container/stargazers)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/YonierGomez/cat-container/docker-image.yml?label=auto-release)](https://github.com/YonierGomez/cat-container/actions)
[![License](https://img.shields.io/github/license/YonierGomez/cat-container)](LICENSE)

![nginx](https://img.shields.io/badge/nginx-alpine-009639?logo=nginx&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-multi--arch-2496ED?logo=docker&logoColor=white)
![Alpine](https://img.shields.io/badge/Alpine_Linux-0D597F?logo=alpinelinux&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-2088FF?logo=githubactions&logoColor=white)

Imagen Docker ultra-liviana basada en **nginx:alpine** con build multi-arquitectura y auto-release. Perfecta para Raspberry Pi, Orange Pi y cualquier placa ARM.

![Container Cat](containercat.jpg)

## Uso rápido

```bash
docker run -d -p 8080:80 neytor/catcontainer
```

Abre `http://localhost:8080` en tu navegador.

## Docker Compose

```yaml
services:
  catcontainer:
    image: neytor/catcontainer
    restart: always
    ports:
      - 8080:80
```

## Arquitecturas soportadas

| Arquitectura | Plataforma | Dispositivos compatibles |
|---|---|---|
| x86_64 | `linux/amd64` | PCs, servidores, VMs |
| ARM 64-bit | `linux/arm64` | Raspberry Pi 3/4/5, Orange Pi 5, Rock Pi, Apple Silicon |
| ARM 32-bit v7 | `linux/arm/v7` | Raspberry Pi 2/3 (32-bit OS), Orange Pi Zero/Lite |

```bash
# Pull para una arquitectura específica
docker pull --platform linux/arm64 neytor/catcontainer
```

### 🍊 Probado en

- ✅ Raspberry Pi 5 (arm64)
- ✅ Orange Pi (armv7 / arm64)
- ✅ Cualquier SBC con arquitectura ARM

## CI/CD

El repo tiene dos workflows:

- **PR Build Test**: cada PR hace build + health check sin pushear a Docker Hub
- **Auto-Release**: cada lunes revisa si hay nueva versión de nginx, hace build multi-arch, push a Docker Hub y crea un GitHub Release con changelog

## Stack

| Componente | Tecnología |
|---|---|
| Base image | nginx:alpine (~7MB) |
| Build | QEMU + Docker Buildx |
| CI/CD | GitHub Actions (free tier) |
| Registry | Docker Hub |

## Sponsor

Si te resulta útil este proyecto, considera apoyarlo:

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/yoniergomez)
[![GitHub Sponsors](https://img.shields.io/badge/GitHub%20Sponsors-ea4aaa?logo=githubsponsors&logoColor=white)](https://github.com/sponsors/YonierGomez)

## Autor

[yonier.com](https://www.yonier.com)
