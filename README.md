# 🐱 Container Cat

Imagen Docker ultra-liviana basada en **nginx:alpine** con build multi-arquitectura y auto-release.

Cada semana, un workflow de GitHub Actions detecta si hay nueva versión de nginx, hace build para 3 arquitecturas y crea un release con el changelog del upstream. Todo automático.

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

| Arquitectura | Plataforma | Disponible |
|---|---|---|
| x86_64 | `linux/amd64` | ✅ |
| ARM 64-bit | `linux/arm64` | ✅ |
| ARM 32-bit v7 | `linux/arm/v7` | ✅ |

```bash
# Pull para una arquitectura específica
docker pull --platform linux/arm64 neytor/catcontainer
```

## CI/CD

El repo tiene dos workflows:

- **PR Build Test**: cada PR hace build + health check sin pushear a Docker Hub
- **Auto-Release**: cada lunes revisa si hay nueva versión de nginx, hace build multi-arch, push a Docker Hub y crea un GitHub Release con changelog

## Stack

- **Base**: nginx:alpine (~7MB)
- **Build**: QEMU + Docker Buildx
- **CI/CD**: GitHub Actions (plan gratuito, sin runners ARM)
- **Registry**: Docker Hub

## Autor

[yonier.com](https://www.yonier.com)
