# EnP App Guidelines — Templates de Página (Referência)

> Arquivo de referência do `enp-app-guidelines`. Consulte o `SKILL.md` principal para padrões estruturais.

---

## 13.1 Dashboard (visão geral)

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb + seletor de período
   ├─ Page Header: título "Dashboard" + subtítulo
   └─ Page Body
      ├─ Metrics Grid (4 colunas): KPIs principais
      ├─ Card: gráfico ou visualização principal
      └─ Card com Grid 2 colunas: cards secundários
```

---

## 13.2 Análise (split layout)

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb + seletor de período
   ├─ Page Header: título + subtítulo
   └─ Page Body
      └─ Card com Tabs
         └─ Split Layout
            ├─ Esquerda (sticky): FormField (select) + Metrics Grid + Botão "Analisar"
            └─ Direita: Resultado da IA (seções, listas, callouts)
```

---

## 13.3 Configurações

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb
   ├─ Page Header: título "Configurações"
   └─ Page Body
      ├─ Card: grupo de configurações
      │  ├─ Card Header: nome do grupo
      │  └─ Card Body: lista de FormFields
      ├─ Card: outro grupo
      └─ Card Footer fixo: botões Cancelar + Salvar
```

---

## 13.4 Formulário (criação/edição)

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb com link de volta
   ├─ Page Header: título "Criar X" ou "Editar X"
   └─ Page Body
      └─ Card
         ├─ Card Body: FormFields agrupados por seção
         └─ Card Footer: Cancelar + Salvar
```

---

## 13.5 Lista simples

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb
   ├─ Page Header: título + botão "Adicionar"
   └─ Page Body
      └─ Card
         ├─ Card Header: busca + filtros
         └─ Card Body: DataTable com ações por linha
```

---

## 13.6 Lista de produtos / entidades ricas

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb
   ├─ Page Header: título + botão "Novo produto"
   └─ Page Body
      └─ Card
         ├─ Card Header: busca + filtros + ordenação
         ├─ Card Body: DataTable com thumbnail + nome + métricas + ações
         └─ Card Footer: paginação
```

---

## 13.7 Relatórios / Outputs

```
AppShell
└─ Page
   ├─ Top Bar: breadcrumb + seletor de período
   ├─ Page Header: título + botão "Gerar novo"
   └─ Page Body
      ├─ Card: formulário de configuração do relatório
      └─ Card: lista de relatórios gerados (DataTable ou cards empilhados)
```

---

## 13.8 Landing / Onboarding

```
AppShell
└─ Page (sem Top Bar)
   └─ Page Body centralizado (max-width 640px)
      ├─ Ícone ou ilustração
      ├─ Título (H2) + descrição
      ├─ Lista de features com ícones
      └─ Botão primário de ação
```
