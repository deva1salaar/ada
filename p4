import pandas as pd
def find_s_algorithm(file_path):
    data = pd.read_csv(r"C:\Users\summi\OneDrive\Desktop\ML LAB\training_data.csv")

    print("Training data:")
    print(data)

    attributes = data.columns[:-1]
    class_label = data.columns[-1]

    hypothesis = ['?' for _ in attributes]
    
    for index, row in data.iterrows():
        if row[class_label] == 'Yes':
            if ( hypothesis == ['?' for _ in attributes]):
                hypothesis = [row[i] for i in attributes]
            else:
                # Generalize hypothesis
                for i,value in enumerate(row[attributes]):
                    if hypothesis[i] != value:
                        hypothesis[i]='?'
    return hypothesis

file_path = 'training_data.csv'
hypothesis = find_s_algorithm(file_path)
print("\nThe final hypothesis is:", hypothesis)
