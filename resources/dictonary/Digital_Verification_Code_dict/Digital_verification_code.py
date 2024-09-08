with open('D:\HVV\Dictionary\Digital_Verification_Code_dict\Six_Digital_Verification_Code_dict.txt', 'w') as f:
    f.write(''.join(f"{i:06d}\n" for i in range(1, 1000000)))