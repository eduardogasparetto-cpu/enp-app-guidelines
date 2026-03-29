# EnP App Guidelines para Cursor

Guidelines de estrutura e layout de interface para aplicacoes do Ecommerce na Pratica (EnP) empacotado como **Cursor Skill** para uso automatico.

> Esta skill define **estrutura** (layout, composicao, navegacao). Para **cores e tokens visuais**, use o [enp-design-system](https://github.com/eduardogasparetto-cpu/enp-design-system).

## O que instala

| Arquivo | Destino | Funcao |
|---|---|---|
| `skill/SKILL.md` | `.cursor/skills/enp-app-guidelines/SKILL.md` | Padroes estruturais (AppShell, Page, Card, etc.) |
| `skill/icons.md` | `.cursor/skills/enp-app-guidelines/icons.md` | Mapeamento semantico de icones |
| `skill/templates.md` | `.cursor/skills/enp-app-guidelines/templates.md` | 8 templates de pagina |

## Instalacao via chat (recomendada)

Abra o chat do Cursor (**Ctrl + L**) e cole:

```
Instale a skill enp-app-guidelines a partir do repositorio https://github.com/eduardogasparetto-cpu/enp-app-guidelines — clone o repositorio e copie todos os arquivos da pasta skill/ para .cursor/skills/enp-app-guidelines/. Crie a pasta se nao existir.
```

## Instalacao via terminal

### Mac / Linux

```bash
git clone https://github.com/eduardogasparetto-cpu/enp-app-guidelines.git
cd enp-app-guidelines
bash install.sh
```

### Windows (PowerShell)

```powershell
git clone https://github.com/eduardogasparetto-cpu/enp-app-guidelines.git
cd enp-app-guidelines
.\install.ps1
```

## Skill complementar (obrigatoria)

Esta skill define apenas **estrutura**. Para cores, tipografia e tokens visuais, instale o **enp-design-system**:

```
https://github.com/eduardogasparetto-cpu/enp-design-system
```

As duas skills devem ser usadas **juntas** ao construir interfaces EnP.

## O que contem

- **AppShell** — sidebar fixa + area de conteudo
- **Page** — top bar, header, body
- **Card** — 5 variantes (simples, header, footer, tabs, completo)
- **Tabs** — navegacao horizontal
- **Metrics Grid** — KPIs em grid responsivo
- **FormField** — label-sobre-input
- **Split Layout** — dois paineis (config + resultado)
- **DataTable** — tabela de dados com zebra e acoes
- **Feedback** — toast, alert, modal, confirmation, loading
- **Icones** — mapeamento semantico (NimbusIcons + Lucide)
- **Templates** — 8 templates de pagina (dashboard, analise, config, form, lista, etc.)
- **Responsividade** — regras de colapso por breakpoint

## Versao

- **Skill:** v1.1.0 (2026-03-29)

### Changelog

**v1.1.0** (2026-03-29)
- Skill dividida em core + 2 arquivos de referencia (icons.md, templates.md)
- Adicionada referencia cruzada com enp-design-system
- Core reduzido para ~360 linhas

**v1.0.0** (2026-03-29)
- Versao inicial
