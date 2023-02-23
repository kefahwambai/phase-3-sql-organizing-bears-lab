def selects_all_female_bears_return_name_and_age
  SELECT bears.name, bears.age FROM bears WHERE sex="F";
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  SELECT bears.name FROM bears ORDER BY name ASC;
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  SELECT bears.name, bears.age, bears.alive FROM bears WHERE alive="True" AND age IS NOT NULL ORDER BY age ASC;
end

def selects_oldest_bear_and_returns_name_and_age
  SELECT bears.name, bars.age, FROM bears WHERE age = (SELECT MAX(age) FROM bears);
end

def select_youngest_bear_and_returns_name_and_age
  SELECT bears.name, bears.age FROM bears ORDER BY age ASC LIMIT 1;
end
