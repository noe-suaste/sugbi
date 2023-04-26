create table catalog.book_item(
    book_item_id bigint generated always as identity primary key,
    book_id bigint not null references catalog.book
);
--;;
create table catalog.book_lending(
    book_lending_id bigint generated always as identity primary key,
    book_item_id bigint not null references catalog.book_item,
    user_id bigint not null, 
    checkout_date date not null,
    due_date date not null,
    return_date date not null
);