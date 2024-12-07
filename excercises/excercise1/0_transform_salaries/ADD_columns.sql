---C , D adding columns

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_SEK_yearly INTEGER;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_SEK_monthly INTEGER;

ALTER TABLE main.cleaned_salaries
DROP COLUMN salary_SEK_yealy;

ALTER TABLE main.cleaned_salaries
DROP COLUMN meaning;

SELECT * FROM main.cleaned_salaries;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_level ENUM('low','medium','high','insanely_high');

DESC TABLE cleaned_salaries;