file:-
    write('Enter the string: '),
    read(STR),
    writeln(' '),
    open('source.txt', read, INTEXT),
    set_input(INTEXT),
    iteration(INTEXT, L),
    close(INTEXT),
    findall(X, (member(X, L), limit(1, sub_string(X, _, _, _, STR))), OUT),
    open('out.txt', write, OUTFILE),
    out(OUTFILE, OUT),
    close(OUTFILE).

iteration(_, []):-
    at_end_of_stream,
    !.
iteration(F, [Head|Tail]):-
    read_line_to_codes(F, COD),
    string_codes(Head, COD),
    iteration(F, Tail).


out(_, []):-!.
out(R, [H|T]):-
    writeln(R,H),
    out(R, T).



