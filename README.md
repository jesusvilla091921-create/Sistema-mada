# Sistema de Gestión de Promotores (SGP)

Sistema web profesional para gestionar promotores: portabilidades (fichas), ICCs (SIM), evidencias fotográficas, nóminas con escalas progresivas y panel de supervisor.

## 🚀 Arranque Rápido

### Opción A: Docker (recomendado para pruebas locales)
1) Copia el archivo de ejemplo a `.env` en `server/`:
```
cp server/.env.example server/.env
```
2) Levanta servicios:
```
docker compose up --build
```
3) API: http://localhost:4000/api/health  
   Frontend: http://localhost:4000/  (servido estático por el backend)

### Opción B: Local (sin Docker)
1) Instala dependencias del backend:
```
cd server
npm install
cp .env.example .env
# Ajusta variables en .env (MONGO_URI, JWT_SECRET, etc.)
npm run dev   # o npm start
```
2) (Opcional) Servir el frontend estático:
   - Por defecto, el backend sirve `client/public/`.
   - Alternativamente, abre `client/public/index.html` con Live Server.

## 📦 Estructura
- `server/` API Node.js + Express + MongoDB
- `client/` Frontend vanilla JS (SPA simple)
- `docs/` Documentación

## 🔐 Credenciales iniciales
- La primera ejecución permite registrar el PRIMER usuario **admin** vía `/api/auth/register` sin token (solo si no hay usuarios). Después, *todo registro exige rol admin/supervisor* con token.
- Crea el primer usuario con POST a `/api/auth/register` desde `client` (página Register) o via curl.

## ☁️ Almacenamiento de evidencias
- Por defecto usa **disco local** en `server/uploads/`.
- Si configuras Firebase Storage (variables en `.env` y credencial), subirá a Firebase automáticamente.

## 📚 Documentación
Revisa `docs/SETUP_GUIDE.md`, `docs/API_DOCUMENTATION.md` y `docs/USER_MANUAL.md`.
