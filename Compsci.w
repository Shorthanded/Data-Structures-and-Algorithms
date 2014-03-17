\datethis

@*Introduction. This implements programs from Chapter 1 in ``Data Structures---An Advanced Approach using \Cee''

@*Structures. {\bf Structures} are a compound data type  that ``{\it contains an arbitrary group of related data}''. A structure can can contain fields of any kind of data, including other structures. A structure type name (or {\it tag}) is optional,  used when defining a type.

@d WORDLENGTH 100 
@d WORDCOUNT 100

@c
typedef struct wordcount {
	char word [WORDLENGTH];
	int frequency;
};

wordcount wordfrequency[WORDCOUNT];

@ It is also possible to define a type or structure and create a variable all at once:

@c

typedef struct wordcount2 {
	char word [WORDLENGTH];
	int frequency;
} wordfrequency2[WORDCOUNT];

@ An example of when the tag might be omitted is shown below:

@c
typedef struct employee_data {
	struct {
		char street[16];
		char city[8];
		char state[2];
		int zip_code;
	} address;
	struct {
		int salary;
		int years_employed;
	}misc;
};

@*Operations on Structures. The most common operation on stuctures is member access.

@c
employee_data edwin;
printf("%d\n",edwin.address.zip_code);

@*Index.
