--general look through of the dataset
select * from loan_dataset;

select count(*) from loan_dataset;

--are all the customers unique?
select count(distinct customer_id) unique_customer_count from loan_dataset;

--general view of age, income and spending
select min(age), max(age), round(avg(age)) avg_age, round(avg(ccavg),2) avg_spending, round(avg(income)) avg_income from loan_dataset;

--percentage of customers according to personal loan
select personal_loan, round(count(*) * 100 / sum(count( *)) over(), 2) loan_percentage from loan_dataset group by personal_loan;

--Income vs loan
select personal_loan, max(income), round(avg(income),2) avg_income from loan_dataset group by personal_loan;
select personal_loan, income_group, count(*) from loan_dataset group by personal_loan, income_group;
select income_group, count(*), sum(personal_loan) count_loan from loan_dataset group by income_group;

--Family vs loan
select personal_loan, family, count(*) from loan_dataset group by family, personal_loan order by 2,1;

--Spending vs loan
select personal_loan, round(avg(ccavg), 2) avg_spending, max(ccavg), min(ccavg) from loan_dataset group by personal_loan;
select spending_level, personal_loan, count(*) from loan_dataset group by spending_level, personal_loan order by 3;

--cd account vs loan
select cd_account, personal_loan, count(*) from loan_dataset group by cd_account, personal_loan;









