

# import dbt

def model(dbt, session):

    my_sql_model_df = dbt.ref("stablecoin_activity_per_day")

    # final_df = ...  # stuff you can't write in SQL!

    return my_sql_model_df