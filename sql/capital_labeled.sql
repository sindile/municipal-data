-- Table: public.capital_labeled

-- DROP TABLE public.capital_labeled;

CREATE TABLE public.capital_labeled
(
  demarcation_code text,
  period_code text,
  function_code text,
  item_code text,
  new_assets bigint,
  renewal_of_existing bigint,
  total_assets bigint,
  repairs_maintenance bigint,
  asset_register_summary bigint,
  function_label text,
  item_label text,
  id integer NOT NULL DEFAULT nextval('capital_labeled_id_seq'::regclass),
  demarcation_label text,
  financial_year integer,
  period_length text,
  financial_period text,
  amount_type_code text,
  amount_type_label text,
  function_category text,
  CONSTRAINT capital_labeled_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.capital_labeled
  OWNER TO municipal_finance;
