---
name: enp-app-guidelines
description: >-
  Interface structure and layout guidelines for EnP applications and tools.
  Use when building dashboards, admin panels, internal tools, or any
  application interface for Ecommerce na Prática. Defines structural
  patterns (AppShell, Page, Card, Tabs, FormField, Split Layout, DataTable),
  page templates, navigation patterns, icon mapping, and responsive rules.
  Does NOT contain colors or visual tokens — those come from enp-design-system.
  Always use this skill together with enp-design-system when building EnP apps.
version: 1.2.0
updated: 2026-03-31
---

# EnP — App & Interface Guidelines

## 1. Sobre e escopo

Esta skill define a **estrutura** de interfaces para aplicações e ferramentas do Ecommerce na Prática: dashboards, painéis administrativos, ferramentas internas e interfaces de produto.

### O que esta skill cobre

Composição de telas, padrões de layout, hierarquia de conteúdo, anatomia de componentes, templates de página, navegação, ícones e regras de responsividade.

### O que esta skill NÃO cobre

Cores, gradientes, tipografia, espaçamento base, sombras, tokens visuais, logos e wireframes de landing page. Tudo isso está no **`enp-design-system`** — consulte-o para qualquer decisão visual.

### Regra de uso conjunto

Ao construir qualquer interface EnP, carregar **ambas** as skills:
1. `enp-app-guidelines` — estrutura e composição
2. `enp-design-system` — tokens visuais e cromáticos

Onde este documento mencionar "conforme DS §X", refere-se à seção X do `enp-design-system`.

### Instalação

Cole este link no chat da sua IA e peça para instalar:

```
https://github.com/eduardogasparetto-cpu/enp-app-guidelines
```

### Skill complementar

Para tokens visuais (cores, tipografia, espaçamento), instale também o **enp-design-system**:

```
https://github.com/eduardogasparetto-cpu/enp-design-system
```

### Arquivos de referência

| Arquivo | Conteúdo |
|---|---|
| `icons.md` | Mapeamento semântico completo: NimbusIcons + Lucide por função |
| `templates.md` | 8 templates de página com diagramas de composição |

---

## 2. AppShell

Container raiz de toda aplicação. Composto por sidebar fixa e área de conteúdo.

### Anatomia

```
┌──────────┬─────────────────────────────────┐
│          │  Top Bar (breadcrumb + ações)    │
│ Sidebar  ├─────────────────────────────────┤
│  (fixa)  │  Page Header (título + ações)   │
│          ├─────────────────────────────────┤
│          │  Page Body (conteúdo principal)  │
│          │                                  │
└──────────┴─────────────────────────────────┘
```

### Proporções

| Elemento | Largura | Comportamento |
|---|---|---|
| Sidebar | 240px | Fixa, não colapsa em desktop |
| Conteúdo | `calc(100% - 240px)` | Flexível, scroll vertical |

### Superfícies

- Sidebar: fundo de card (conforme DS §18)
- Conteúdo: fundo de página (conforme DS §18)
- Separação entre sidebar e conteúdo: borda vertical sutil (conforme DS §15, token de divisor)

---

## 3. Sidebar / Menu

### Anatomia

```
┌──────────────┐
│  Brand        │  ← Logo ou nome da app
├──────────────┤
│  Nav Item     │  ← Sem grupo (topo)
├──────────────┤
│  GROUP LABEL  │  ← Uppercase, tracking largo
│  Nav Item     │
│  Nav Item ●   │  ← Ativo
│  Nav Item     │
├──────────────┤
│              │
│  (spacer)   │  ← flex-grow empurra footer
│              │
├──────────────┤
│  User info   │  ← Email + ação de logout
└──────────────┘
```

### Elementos

| Elemento | Especificação |
|---|---|
| Brand | Símbolo do logo (conforme DS §20) + nome da app |
| Group label | Uppercase, semibold, Small/UI (DS §1), cor de legenda |
| Nav item | Ícone (18x18) + label. Peso medium, Caption/UI. Borda esquerda 3px |
| Nav item ativo | Cor de nav link ativo (DS §15). Borda esquerda preenchida. Background sutil |
| Nav item hover | Cor de texto secundário → corpo. Background sutil |
| Footer | Borda superior como divisor. Label + email + botão ghost logout |

### Comportamento mobile

Em breakpoints < `md` (768px), a sidebar vira **drawer** com overlay (conforme DS §10).

---

## 4. Page

Padrão de composição da área de conteúdo. Três camadas verticais.

### 4.1 Top Bar

| Lado esquerdo | Lado direito |
|---|---|
| Breadcrumb: `Dashboard / Seção / Página atual` | Ação global: seletor de período, filtro, ou vazio |

### 4.2 Page Header

| Lado esquerdo | Lado direito |
|---|---|
| Título (H3 conforme DS §1) + subtítulo opcional | Botões de ação ou controles contextuais |

### 4.3 Page Body

Área principal. Flex column com gap. Padding conforme DS §4.

---

## 5. Card

Container de conteúdo elevado sobre o fundo da página.

### Variantes

| Variante | Composição |
|---|---|
| Simples | Body |
| Com header | Header (título + ações) → Body |
| Com footer | Body → Footer (ações) |
| Com tabs | Tabs → Body |
| Completo | Header → Tabs → Body → Footer |

### Regras

- Separação visual por contraste de superfície (DS §18), não por borda
- Border radius Large (DS §5)
- Overflow hidden
- Header e footer separados por borda sutil (token de divisor)

### CSS de referência (modo escuro institucional)

```css
.card {
  background: var(--bg-card);       /* #2A2D33 */
  border-radius: 16px;
  overflow: hidden;
  box-shadow: 0 4px 24px rgba(13, 27, 46, 0.35);
}
.card__header, .card__footer {
  border-bottom: 1px solid var(--table-divider);  /* rgba(255,255,255,0.06) */
  padding: 16px 24px;
}
.card__body { padding: 24px; }
```

---

## 6. Tabs

Navegação horizontal dentro de cards ou pages. Base reta (NÃO pill/chip).

| Propriedade | Valor |
|---|---|
| Posição | Topo do card, abaixo do header |
| Indicador ativo | Borda inferior 2px, cor de CTA (DS §15) |
| Texto ativo | Cor de CTA, font-weight 600 |
| Texto inativo | Cor secundária (Gray 40), font-weight 400 |
| Mobile | Scroll horizontal com `overflow-x: auto` |

### CSS de referência (modo escuro institucional)

```css
/* Container das tabs */
.tabs { display: flex; gap: 0; border-bottom: 1px solid var(--table-divider); }

/* Tab individual */
.tab {
  background: transparent;
  border: none;
  border-bottom: 2px solid transparent;
  padding: 12px 20px;
  font-size: 14px;
  font-weight: 400;
  color: var(--text-meta);  /* Gray 40 #979BA1 */
  cursor: pointer;
  transition: color 0.2s ease, border-color 0.2s ease;
}

/* Tab ativa */
.tab--active {
  font-weight: 600;
  color: var(--accent);  /* Sky Blue #31B3F9 */
  border-bottom-color: var(--accent);
}
```

### Proibições

- **NUNCA** usar `border-radius` em tabs — base deve ser reta
- **NUNCA** usar `background` colorido para indicar tab ativa — usar apenas `border-bottom`
- **NUNCA** usar font-weight 500 ou 700 — apenas 400 (inativo) e 600 (ativo)

---

## 7. Metrics / KPI Grid

Grid de cards compactos para métricas numéricas.

### Layout

| Colunas desktop | Colunas tablet | Colunas mobile |
|---|---|---|
| 4 (padrão) ou 3 | 2 | 1 |

Cada item: label uppercase (Label/Eyebrow), valor em H4, fundo de superfície interna (DS §18), radius Medium.

---

## 8. FormField

Padrão label-sobre-input.

- Label sempre acima do input, nunca inline
- Especificações de input conforme DS §9
- Gap label→input: 6px. Gap input→erro: 4px

| Tipo | Comportamento |
|---|---|
| Select | Seta chevron-down, fundo de input |
| Input text | Placeholder em cor de placeholder (DS §9) |
| Textarea | Mesma anatomia, altura auto-expansível |

---

## 9. Split Layout

Layout de dois painéis lado a lado.

| Contexto | Esquerda | Direita |
|---|---|---|
| Config + resultado | `1fr` | `1.4fr` |
| Form + preview | `1fr` | `1fr` |

- Config: `position: sticky` com `top`
- Resultado: sem `maxHeight` fixo
- Mobile (< `md`): stack vertical, config em cima

### Resultado da IA

| Elemento | Especificação |
|---|---|
| Header | Label uppercase, borda inferior sutil |
| Seções (h3) | Indicador lateral 3px cor CTA + semibold |
| Listas | Bullets circulares, CTA a 50% opacidade |
| Callout | Borda esquerda 3px CTA, fundo CTA a 6% |

---

## 10. DataTable

Tabela de dados com estrutura de camadas. Tokens visuais em DS §19.

- Header diferencia por peso (semibold) e cor, não por tamanho
- Última linha sem divisor inferior
- Ações por linha: alinhadas à direita, ghost ou ícone-botão
- Paginação: abaixo da tabela, à direita
- Mobile: scroll horizontal com `overflow-x: auto`

### CSS de referência (modo escuro institucional)

```css
.datatable { width: 100%; border-collapse: collapse; }

.datatable th {
  padding: 12px 16px;
  font-size: 12px;
  font-weight: 600;
  color: var(--text-meta);            /* #979BA1 */
  text-transform: uppercase;
  letter-spacing: 0.10em;
  text-align: left;
  background: var(--table-header-bg); /* rgba(255,255,255,0.07) */
  border-bottom: 1px solid var(--table-divider);
}

.datatable td {
  padding: 12px 16px;
  font-size: 14px;
  font-weight: 400;
  color: var(--text-body);            /* #BDC0C6 */
  border-bottom: 1px solid var(--table-divider);  /* rgba(255,255,255,0.06) */
}

.datatable tr:nth-child(even) { background: var(--table-zebra); /* rgba(255,255,255,0.025) */ }
.datatable tr:last-child td { border-bottom: none; }
```

---

## 11. Feedback & Overlays

### Toast

Posição: topo direito. Auto-dismiss 3s (DS §10). Ícone + mensagem + fechar.

### Alert

Inline. Ícone + título opcional + mensagem. Variantes: success, error, warning, info (DS §8).

### Modal

Overlay conforme DS §10. Centro da tela. Header (título + close) → Body → Footer. Largura: 480px (padrão), 640px (largo).

```css
.modal-overlay {
  position: fixed; inset: 0;
  background: rgba(13, 27, 46, 0.70);
  z-index: 1055;
  display: flex; align-items: center; justify-content: center;
}
.modal {
  background: var(--bg-card);
  border-radius: 16px;
  padding: 32px;
  width: 100%; max-width: 480px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.5);
}
.modal--wide { max-width: 640px; }
```

### Confirmation Modal

Ícone de alerta + título + descrição da consequência + Cancelar + Confirmar destrutivo.

### Loading

| Contexto | Padrão |
|---|---|
| Botão | Spinner interno, texto oculto |
| Página/seção | Skeleton shimmer (DS §7) |
| Global | Overlay sólido + spinner (DS §10) |

---

## 12. Ícones

Ícones são definidos por **função semântica**. A implementação escolhe a fonte conforme o stack.

- React/Next.js Nuvemshop: `@nimbus-ds/icons`
- Outros contextos: Lucide

Mapeamento completo por função → ver **`icons.md`**.

Regras: monocromáticos, sem container decorativo, gap 8px em botões, toque mínimo 44x44px.

---

## 13. Templates de página

8 templates cobrem 95% dos casos. Ver **`templates.md`** para diagramas completos.

| Template | Uso |
|---|---|
| Dashboard | Visão geral com KPIs + gráficos |
| Análise | Split layout com config + resultado IA |
| Configurações | Cards de grupo com FormFields |
| Formulário | Criação/edição com validação |
| Lista simples | DataTable com busca/filtros |
| Lista rica | DataTable com thumbnails + métricas |
| Relatórios | Config + lista de outputs gerados |
| Onboarding | Centralizado, sem top bar |

---

## 14. Responsividade

### Regras de colapso

| Breakpoint | Mudança |
|---|---|
| < 1024px (`lg`) | Grid de métricas: 4 → 2 colunas |
| < 768px (`md`) | Sidebar → drawer. Split → stack vertical. DataTable → scroll horizontal |
| < 480px (`sm`) | Grid de métricas: 2 → 1 coluna. Tabs → scroll horizontal |

Breakpoints seguem DS §13. Não criar breakpoints customizados. Em stack mobile: config/formulário no topo, resultado abaixo.

---

## 15. Regras para o agente

### Protocolo de inicialização (obrigatório)

Antes de escrever **qualquer código que contenha cor, fundo, borda ou propriedade visual**, o agente DEVE:

**Passo 1 — Ler o DS.**
Abrir e ler `enp-design-system/SKILL.md`. Não confiar na memória.

**Passo 2 — Identificar o modo cromático.**
Perguntar ao usuário ou inferir: institucional claro, escuro institucional, ou serviços.

**Passo 3 — Extrair os tokens.**
Copiar a tabela de cores semânticas do modo ativo (`semantic-colors.md` do DS).

**Passo 4 — Declarar os tokens antes de codar.**
Listar explicitamente os tokens que serão usados. Se um valor não está na lista, não pode ser usado.

**Passo 5 — Compor a interface.**
1. Escolher o template (§13 / `templates.md`)
2. Compor com padrões estruturais (§2–11)
3. Selecionar ícones por função (`icons.md`)
4. Aplicar tokens visuais do Passo 4

**Passo 6 — Checklist de componentes (obrigatório).**
Antes de implementar, listar TODOS os componentes dos §2–11 que a tela usará. Para cada um, citar a regra de spec. Exemplo:

```
Componentes desta tela:
- Card → §5: bg-card, radius 16px, shadow, sem borda
- Tabs → §6: underline 2px accent, fw 600/400, base reta
- DataTable → §10: zebra, th uppercase 12px 0.10em, last-child sem border
- Modal → §11: z-index 1055, radius 16px, overlay 70%
```

Se um componente aparece no código mas NÃO foi listado neste passo, é violação. O agente deve parar e revisar.

### Regras negativas

1. **Nunca inventar cores** — toda cor vem do DS. Inclui tons "aproximados". Se não existe literalmente no DS (§2, §15), não pode ser usada.
2. **Nunca criar tons de texto fora da escala do DS** — 3 níveis no modo escuro: `#FFFFFF`, `#BDC0C6`, `#979BA1`. Sem quarto nível.
3. **Nunca hardcodar hex em estilos inline** sem comentário referenciando o token DS.
4. **Nunca usar componentes Nimbus (`@nimbus-ds/*`)** a menos que o projeto seja React E Nuvemshop.
5. **Nunca criar layouts fora dos templates** sem justificativa.
6. **Nunca omitir breadcrumb** na top bar.
7. **Nunca usar ícones de bibliotecas não mapeadas** — consultar `icons.md`.
