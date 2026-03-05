---
inclusion: always
---

# Git Workflow

- NUNCA hacer push directo a `master`. La rama está protegida.
- Todos los cambios deben ir via Pull Request.
- Para hacer cambios:
  1. Crear una rama desde master: `git checkout -b feat/nombre-del-cambio`
  2. Hacer commits en la rama
  3. Push de la rama: `git push origin feat/nombre-del-cambio`
  4. Crear PR con `gh pr create`
  5. Merge con `gh pr merge` una vez aprobado
- Convención de ramas: `feat/`, `fix/`, `chore/`, `docs/`
- Después del merge, siempre borrar la rama remota: `git push origin --delete feat/nombre-del-cambio`
- Commits en español o inglés, usando conventional commits (feat, fix, chore, docs)
