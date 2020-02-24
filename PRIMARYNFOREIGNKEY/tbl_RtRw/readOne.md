# tabel rt dan rw

disini kalian tinggal menggunakan alter table untuk merubah table dan menambahkan foreign key

```sql
ALTER TABLE tbl_rtrw ADD FOREIGN KEY (id_rt) REFERENCES tbl_rt(id_rt);
ALTER TABLE tbl_rtrw ADD FOREIGN KEY (id_rw) REFERENCES tbl_rw(id_rw);
```