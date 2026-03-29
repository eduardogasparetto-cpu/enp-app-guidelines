# EnP App Guidelines — Mapeamento de Ícones (Referência)

> Arquivo de referência do `enp-app-guidelines`. Consulte o `SKILL.md` principal para regras de uso.

---

## Fontes

| Stack | Biblioteca | Instalação |
|---|---|---|
| React / Next.js dentro do ecossistema Nuvemshop | `@nimbus-ds/icons` | `npm install @nimbus-ds/icons` |
| Qualquer outro contexto (HTML, Vue, Astro, etc.) | Lucide | CDN, SVG, ou pacote do framework |

## Tamanhos

| Nome | Pixels | Uso |
|---|---|---|
| Small | 16px | Inline com texto, badges |
| Medium | 18-20px | Nav items, botões com ícone |
| Large | 24px | Headers, ações destacadas |

---

## Mapeamento semântico

### Navegação

| Função | NimbusIcons | Lucide |
|---|---|---|
| Home / Dashboard | `HomeIcon` | `house` |
| Monitor | `DesktopIcon` | `monitor` |
| Páginas | `FileIcon` | `file-text` |
| Aquisição / Canais | `GlobeIcon` | `globe` |
| Audiência / Usuários | `EcosystemIcon` | `users` |
| Temporal / Histórico | `ClockIcon` | `clock` |
| Benchmarks / Métricas | `BarChartIcon` | `bar-chart-3` |
| Relatórios | `InvoiceIcon` | `clipboard-list` |
| Chat / IA | `ChatDotsIcon` | `message-circle` |
| Configurações | `CogIcon` | `settings` |
| Loja online | `OnlineStoreIcon` | `store` |
| Apps | `AppsIcon` | `layout-grid` |

### Ações

| Função | NimbusIcons | Lucide |
|---|---|---|
| Analisar / Buscar | `BrowserSearchIcon` | `search` |
| Atualizar | `HistoryIcon` | `refresh-cw` |
| Download | `DownloadIcon` | `download` |
| Filtrar | `FilterIcon` | `filter` |
| Editar | `PencilIcon` | `pencil` |
| Excluir | `TrashIcon` | `trash-2` |
| Copiar | `CopyIcon` | `copy` |
| Link externo | `ExternalLinkIcon` | `external-link` |
| Adicionar | `PlusIcon` | `plus` |
| Fechar | `CloseIcon` | `x` |
| Menu hamburger | `MenuIcon` | `menu` |
| Expandir/Colapsar | `ChevronDownIcon` | `chevron-down` |
| Navegar (breadcrumb) | `ChevronRightIcon` | `chevron-right` |
| Arrastar | `DragDotsIcon` | `grip-vertical` |
| Visualizar | `EyeIcon` | `eye` |
| Ocultar | `EyeOffIcon` | `eye-off` |

### Status e feedback

| Função | NimbusIcons | Lucide |
|---|---|---|
| Sucesso | `CheckCircleIcon` | `check-circle` |
| Erro | `ExclamationCircleIcon` | `x-circle` |
| Alerta | `ExclamationTriangleIcon` | `alert-triangle` |
| Informação | `InfoCircleIcon` | `info` |
| Loading | `SpinnerIcon` | `loader-2` (animado) |
| Notificação | `NotificationIcon` | `bell` |

### Conteúdo

| Função | NimbusIcons | Lucide |
|---|---|---|
| Calendário | `CalendarIcon` | `calendar` |
| Imagem | `PictureIcon` | `image` |
| Código | `CodeIcon` | `code` |
| E-mail | `MailIcon` | `mail` |
| Dinheiro / Receita | `MoneyIcon` | `dollar-sign` |
| Cartão de crédito | `CreditCardIcon` | `credit-card` |
| Desconto | `DiscountCircleIcon` | `percent` |
| Presente / Oferta | `GiftBoxIcon` | `gift` |
| Segurança / Lock | `LockIcon` | `lock` |
| Usuário | `IdCardIcon` | `user` |
| Logout | `LogOutIcon` | `log-out` |

---

## Regras

1. Ícones são monocromáticos — cor via token semântico do DS, nunca cor fixa
2. Sem container decorativo por padrão (sem `div` com background atrás do ícone)
3. Em botões com ícone: ícone à esquerda do texto, gap 8px
4. Ícone sozinho (icon-button): área de toque mínima 44x44px
5. Se o ícone semântico não existir nas tabelas acima, buscar em NimbusIcons (React) ou Lucide (geral) pelo nome mais próximo da função
