export default {
  "about": {
    "title": "Sobre mim",
    "file_title": "Download em PDF"
  },
  "contact": {
    "title": "Contate-me",
    "subtitle": "Sinta-se a vontade para entrar em contato",
    "contacts": {
      "title": "Contatos",
      "address": {
        "city": "Amsterdã",
        "country": "Holanda"
      },
      "phone": "+31 06 51 41 60 37",
      "email": "gustavocunha&#64;gmail&#46;com",
      "github": "gmmcal",
      "linkedin": "Gustavo Cunha",
      "twitter": "@gmmcal"
    }
  },
  "education": {
    "title": "Educação e Diplomas",
    "subtitle": "O que eu fiz na minha carreira acadêmica"
  },
  "experience": {
    "title": "Experiência de trabalho",
    "subtitle": "Empresas por onde andei"
  },
  "date": {
    "abbr_day_names": [
      "Dom",
      "Seg",
      "Ter",
      "Qua",
      "Qui",
      "Sex",
      "Sáb"
    ],
    "abbr_month_names": [
      null,
      "Jan",
      "Fev",
      "Mar",
      "Abr",
      "Mai",
      "Jun",
      "Jul",
      "Ago",
      "Set",
      "Out",
      "Nov",
      "Dez"
    ],
    "day_names": [
      "Domingo",
      "Segunda",
      "Terça",
      "Quarta",
      "Quinta",
      "Sexta",
      "Sábado"
    ],
    "formats": {
      "default": "%b / %Y",
      "long": "%d de %B de %Y",
      "short": "%d de %B"
    },
    "month_names": [
      null,
      "Janeiro",
      "Fevereiro",
      "Março",
      "Abril",
      "Maio",
      "Junho",
      "Julho",
      "Agosto",
      "Setembro",
      "Outubro",
      "Novembro",
      "Dezembro"
    ],
    "order": [
      "day",
      "month",
      "year"
    ]
  },
  "datetime": {
    "distance_in_words": {
      "about_x_hours": {
        "one": "aproximadamente 1 hora",
        "other": "aproximadamente %{count} horas"
      },
      "about_x_months": {
        "one": "aproximadamente 1 mês",
        "other": "aproximadamente %{count} meses"
      },
      "about_x_years": {
        "one": "aproximadamente 1 ano",
        "other": "aproximadamente %{count} anos"
      },
      "almost_x_years": {
        "one": "quase 1 ano",
        "other": "quase %{count} anos"
      },
      "half_a_minute": "meio minuto",
      "less_than_x_minutes": {
        "one": "menos de um minuto",
        "other": "menos de %{count} minutos"
      },
      "less_than_x_seconds": {
        "one": "menos de 1 segundo",
        "other": "menos de %{count} segundos"
      },
      "over_x_years": {
        "one": "mais de 1 ano",
        "other": "mais de %{count} anos"
      },
      "x_days": {
        "one": "1 dia",
        "other": "%{count} dias"
      },
      "x_minutes": {
        "one": "1 minuto",
        "other": "%{count} minutos"
      },
      "x_months": {
        "one": "1 mês",
        "other": "%{count} meses"
      },
      "x_seconds": {
        "one": "1 segundo",
        "other": "%{count} segundos"
      }
    },
    "prompts": {
      "day": "Dia",
      "hour": "Hora",
      "minute": "Minuto",
      "month": "Mês",
      "second": "Segundo",
      "year": "Ano"
    }
  },
  "errors": {
    "format": "%{attribute} %{message}",
    "messages": {
      "accepted": "deve ser aceito",
      "blank": "não pode ficar em branco",
      "present": "deve ficar em branco",
      "confirmation": "não é igual a %{attribute}",
      "empty": "não pode ficar vazio",
      "equal_to": "deve ser igual a %{count}",
      "even": "deve ser par",
      "exclusion": "não está disponível",
      "greater_than": "deve ser maior que %{count}",
      "greater_than_or_equal_to": "deve ser maior ou igual a %{count}",
      "inclusion": "não está incluído na lista",
      "invalid": "não é válido",
      "less_than": "deve ser menor que %{count}",
      "less_than_or_equal_to": "deve ser menor ou igual a %{count}",
      "not_a_number": "não é um número",
      "not_an_integer": "não é um número inteiro",
      "odd": "deve ser ímpar",
      "record_invalid": "A validação falhou: %{errors}",
      "restrict_dependent_destroy": {
        "one": "Não é possível excluir o registro pois existe um %{record} dependente",
        "many": "Não é possível excluir o registro pois existem %{record} dependentes"
      },
      "taken": "já está em uso",
      "too_long": "é muito longo (máximo: %{count} caracteres)",
      "too_short": "é muito curto (mínimo: %{count} caracteres)",
      "wrong_length": "não possui o tamanho esperado (%{count} caracteres)",
      "other_than": "deve ser diferente de %{count}"
    },
    "template": {
      "body": "Por favor, verifique o(s) seguinte(s) campo(s):",
      "header": {
        "one": "Não foi possível gravar %{model}: 1 erro",
        "other": "Não foi possível gravar %{model}: %{count} erros."
      }
    }
  },
  "helpers": {
    "select": {
      "prompt": "Por favor selecione"
    },
    "submit": {
      "create": "Criar %{model}",
      "submit": "Salvar %{model}",
      "update": "Atualizar %{model}"
    }
  },
  "number": {
    "currency": {
      "format": {
        "delimiter": ".",
        "format": "%u %n",
        "precision": 2,
        "separator": ",",
        "significant": false,
        "strip_insignificant_zeros": false,
        "unit": "R$"
      }
    },
    "format": {
      "delimiter": ".",
      "precision": 3,
      "separator": ",",
      "significant": false,
      "strip_insignificant_zeros": false
    },
    "human": {
      "decimal_units": {
        "format": "%n %u",
        "units": {
          "billion": {
            "one": "bilhão",
            "other": "bilhões"
          },
          "million": {
            "one": "milhão",
            "other": "milhões"
          },
          "quadrillion": {
            "one": "quatrilhão",
            "other": "quatrilhões"
          },
          "thousand": "mil",
          "trillion": {
            "one": "trilhão",
            "other": "trilhões"
          },
          "unit": ""
        }
      },
      "format": {
        "delimiter": ".",
        "precision": 2,
        "significant": true,
        "strip_insignificant_zeros": true
      },
      "storage_units": {
        "format": "%n %u",
        "units": {
          "byte": {
            "one": "Byte",
            "other": "Bytes"
          },
          "gb": "GB",
          "kb": "KB",
          "mb": "MB",
          "tb": "TB"
        }
      }
    },
    "percentage": {
      "format": {
        "delimiter": ".",
        "format": "%n%"
      }
    },
    "precision": {
      "format": {
        "delimiter": "."
      }
    }
  },
  "support": {
    "array": {
      "last_word_connector": " e ",
      "two_words_connector": " e ",
      "words_connector": ", "
    }
  },
  "time": {
    "am": "",
    "formats": {
      "default": "%a, %d de %B de %Y, %H:%M:%S %z",
      "long": "%d de %B de %Y, %H:%M",
      "short": "%d de %B, %H:%M"
    },
    "pm": ""
  },
  "skills": {
    "title": "Habilidades Técnicas",
    "subtitle": "Os assuntos que mais me interessam no momento, mas estou sempre aberto a novas tecnologias."
  },
  "template": {
    "name": "Gustavo Cunha",
    "title": "Desenvolvedor Web, Mobile, Consultor em Engenharia de Software",
    "current": "Atualmente",
    "menu": {
      "en": "EN",
      "pt-BR": "BR",
      "home": "Home",
      "about": "Sobre",
      "skills": "Habilidades",
      "experience": "Experiência",
      "education": "Educação",
      "portfolio": "Portfólio",
      "contact": "Contato",
      "social": "Social"
    }
  }
}
