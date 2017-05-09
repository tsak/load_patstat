ALTER TABLE tls201_appln ADD PRIMARY KEY (appln_id);

ALTER TABLE tls202_appln_title ADD PRIMARY KEY (appln_id);

ALTER TABLE tls203_appln_abstr ADD PRIMARY KEY (appln_id);

ALTER TABLE tls204_appln_prior ADD PRIMARY KEY (appln_id, prior_appln_id);

ALTER TABLE tls205_tech_rel ADD PRIMARY KEY (appln_id, tech_rel_appln_id);

ALTER TABLE tls206_person ADD PRIMARY KEY (person_id);

ALTER TABLE tls207_pers_appln ADD PRIMARY KEY (person_id, appln_id, applt_seq_nr, invt_seq_nr);

ALTER TABLE tls209_appln_ipc ADD PRIMARY KEY (appln_id, ipc_class_symbol);

ALTER TABLE tls210_appln_n_cls ADD PRIMARY KEY (appln_id, nat_class_symbol);

ALTER TABLE tls211_pat_publn ADD PRIMARY KEY (pat_publn_id);

ALTER TABLE tls212_citation ADD PRIMARY KEY (pat_publn_id, citn_id);

ALTER TABLE tls214_npl_publn ADD PRIMARY KEY (npl_publn_id);

ALTER TABLE tls215_citn_categ ADD PRIMARY KEY (pat_publn_id, citn_id, citn_categ);

ALTER TABLE tls216_appln_contn ADD PRIMARY KEY (appln_id, parent_appln_id);

ALTER TABLE tls222_appln_jp_class ADD PRIMARY KEY (appln_id, jp_class_scheme, jp_class_symbol);

ALTER TABLE tls223_appln_docus ADD PRIMARY KEY (appln_id, docus_class_symbol);

ALTER TABLE tls224_appln_cpc ADD PRIMARY KEY (appln_id, cpc_class_symbol, cpc_scheme);

ALTER TABLE tls226_person_orig ADD PRIMARY KEY (person_orig_id);

ALTER TABLE tls227_pers_publn ADD PRIMARY KEY (person_id, pat_publn_id, applt_seq_nr, invt_seq_nr);

ALTER TABLE tls228_docdb_fam_citn ADD PRIMARY KEY (docdb_family_id, cited_docdb_family_id);

ALTER TABLE tls229_appln_nace2 ADD PRIMARY KEY (appln_id, nace2_code);

ALTER TABLE tls230_appln_techn_field ADD PRIMARY KEY (appln_id, techn_field_nr);

ALTER TABLE tls231_inpadoc_legal_event ADD PRIMARY KEY (appln_id, event_seq_nr);

ALTER TABLE tls801_country ADD PRIMARY KEY (country_code);

ALTER TABLE tls803_legal_event_code ADD PRIMARY KEY (event_auth, event_code);

ALTER TABLE tls901_techn_field_ipc ADD PRIMARY KEY (ipc_maingroup_symbol);

ALTER TABLE tls902_ipc_nace2 ADD PRIMARY KEY (ipc, not_with_ipc, unless_with_ipc, nace2_code);

ALTER TABLE tls904_nuts ADD PRIMARY KEY (nuts3);

ALTER TABLE tls906_person ADD PRIMARY KEY (person_id);

CREATE INDEX ON tls201_appln (appln_filing_date);

CREATE INDEX ON tls201_appln (internat_appln_id);

CREATE INDEX ON tls201_appln (appln_auth, appln_nr, appln_kind);

CREATE INDEX ON tls204_appln_prior (prior_appln_id);

CREATE INDEX ON tls206_person (person_ctry_code);

CREATE INDEX ON tls207_pers_appln (appln_id);

CREATE INDEX ON tls207_pers_appln (person_id);

CREATE INDEX ON tls209_appln_ipc (ipc_class_symbol);

CREATE INDEX ON tls211_pat_publn (publn_auth, publn_nr, publn_kind);

CREATE INDEX ON tls211_pat_publn (appln_id);

CREATE INDEX ON tls211_pat_publn (publn_date);

CREATE INDEX ON tls212_citation (cited_pat_publn_id);

CREATE INDEX ON tls212_citation (cited_appln_id, pat_publn_id);

CREATE INDEX ON tls222_appln_jp_class (jp_class_symbol, jp_class_scheme);

CREATE INDEX ON tls223_appln_docus (docus_class_symbol);

CREATE INDEX ON tls226_person_orig (person_id);

CREATE INDEX ON tls227_pers_publn (pat_publn_id);

CREATE INDEX ON tls227_pers_publn (person_id);
