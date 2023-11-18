# Whisper Docker

Configuración para usar Whisper V3 en Docker.

## Instrucciones

Construir el contenedor:

```
make workspace
```

Abrir el entorno de trabajo:

```
make workspace
```

Copiar a la carpeta `files` los ficheros a transcribir y lanzar el proceso:

```
whisper video.mkv --language Spanish
```

O con un modelo más grande:

```
whisper video.mkv --language Spanish --model medium
```

## Referencias

- [Whisper](https://github.com/openai/whisper)
- [Python - Official Image](https://hub.docker.com/_/python/)
