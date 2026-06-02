# Database Container Images

A collection of bootc-based container images for running various database systems. These images are designed to be used with bootable container technology for efficient, reproducible database deployments.

## Overview

This repository contains Containerfiles for building bootc-compatible images for multiple database systems. Each image is configured to provide a containerized database environment ready for production or development use.

## Available Database Images

Currently available:

- **PostgreSQL** ✅ (Done!)
- **MariaDB** (In development)
- **MongoDB** (Planned)
- **InfluxDB** (Planned)

## Quick Start

### Building the PostgreSQL Image

```bash
podman build -f postgresql.containerfile -t postgresql-bootc:latest .
```

## Project Structure

```
.
├── postgresql.containerfile    # PostgreSQL bootc image definition
├── mariadb.Containerfile       # MariaDB bootc image definition
├── mongodb.Containerfile       # MongoDB bootc image definition
├── influxdb.Containerfile      # InfluxDB bootc image definition
├── cosign.pub                  # Public key for container image signing
├── LICENSE                     # Project license
└── README.md                   # This file
```

## What is Bootc?

Bootc (Boot Container) is a tool for creating bootable container images that can be deployed as complete operating systems. These database images use bootc to provide:

- **Immutable infrastructure** - Predictable, versioned deployments
- **Fast startup** - Quick container initialization
- **Minimal overhead** - Optimized for database workloads
- **Easy updates** - Atomic image updates across environments

## Requirements

- Podman or Docker
- Bootc (for bootable deployments)
- Container signing keys (optional, for image verification)

## Image Verification

This repository includes `cosign.pub` for verifying image signatures. Signed images ensure integrity and authenticity of the database container images.

## Contributing

Contributions are welcome! Please ensure that:

1. Containerfiles follow best practices for security and efficiency
2. Images are tested before submission
3. Documentation is updated accordingly

## License

See [LICENSE](LICENSE) for details.

## Support

For issues, questions, or feature requests, please open an issue in this repository.
