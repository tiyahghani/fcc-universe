# FCC Universe Database Project

This repository contains the `universe.sql` file for the freeCodeCamp Celestial Bodies Database project.

## Contents

- `universe.sql`: PostgreSQL dump of the database including tables, relationships, and sample data.

## Usage

To restore the database:

```bash
psql -U postgres -d universe < universe.sql
