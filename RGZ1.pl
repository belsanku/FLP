task1:-
    read(List),
    bubble(List, SortedList),
    remove_duplic(SortedList, ResultList),
    write(ResultList).

remove_duplic([],[]):-!.
remove_duplic([Head|Tail], Ys):-
    member(Head,Tail), !, remove_duplic(Tail,Ys).
remove_duplic([Head|Tail], [Head|Ys]):-
    remove_duplic(Tail,Ys).

sorting([], []):-!.
  sorting([Head], [Head]):-!.
  sorting([First, Second|Tail], [Second|ListWithMaxEnd]):-
    First > Second, !,
  sorting([First|Tail], ListWithMaxEnd).
  sorting([First, Second|Tail], [First|ListWithMaxEnd]):-
  sorting([Second|Tail], ListWithMaxEnd).

  bubble(SortedList, SortedList):-
    sorting(SortedList, DoubleSortedList),
    SortedList = DoubleSortedList, !.
  bubble(List, SortedList):-
    sorting(List, SortedPart),
    bubble(SortedPart, SortedList).
