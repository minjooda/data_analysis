/* ***************************************************************************************************************
예외처리
 - 실행문에서 발생한 예외(오류)를 처리하여 프로시저가 정상적으로 종료하도록 하는 구문.
 - 예외 종류
	- 오라클 에러
		- 코드가 틀려서 발생하는 오류
	- 명시적 에러 
		- 실행블럭 코드에서 발생시킨 에러.
		- 업무 규칙을 어긴 경우 발생시킨다.
- EXCEPTION 블럭에 처리 구문을 작성
	- 실행 블럭 다음에 작성한다.
 - 구문
  EXCEPTION
    WHEN 예외이름1 THEN
        처리구문
    WHEN 예외이름2 THEN
        처리구문
	[WHEN OTHERS THEN
		처리구문 ]
 
*************************************************************************************************************** */

--오라클 에러코드 조회: https://docs.oracle.com/pls/db92/db92.error_search?remark=homepage&prefill=ORA
set serveroutput on;

declare
    v_emp_name   emp.emp_name%type;
    v_cnt binary_integer;
begin
    v_cnt := 10/0;
    
    select emp_name     into   v_emp_name     from   emp;
    
    dbms_output.put_line(v_emp_name);
--exception
----    when too_many_rows then
----        dbms_output.put_line('너무 많은 행이 조회되었음');
----    when zero_divide then
----        dbms_output.put_line('0으로 못나눔');
--    when others then
--        dbms_output.put_line('나머지 예외 공통 처리');
end;
/



insert into dept values (100, 'a','b');


/* ***************************************************************************************************************
- 오라클 에러에 예외명 연결

- 예외명이 정의되지 않은 오라클 에러
    - 에러코드는 있으나 예외이름이 없는 오라클 제공 오류

 - 구문
 1. 예외이름 선언
    예외이름 EXCEPTION;
 2. 예외이름에 오라클에러코드 연결
    PRAGMA EXCEPTION_INIT (예외이름, 예외코드) 
    - 예외코드는 음수로 붙인다. (-01400)
*************************************************************************************************************** */
-- 미리 정의되지 않은 예외 이름 붙이기 (null 값 INSERT 발생 오류에 이름 붙이기)
insert into dept values(850, null, null);
--ORA-01400: cannot insert NULL into ("SCOTT_JOIN"."DEPT"."DEPT_NAME")
desc dept;
declare
    --1. 예외(exception) 이름 선언
    ex_null exception;
    --2. 1에서 선언한 예외이름과 오라클 에러코드를 연결.
    pragma exception_init(ex_null, -01400);
    -- ORA-01400 오류가 발생하면 ex_null이란 이름으로 예외 처리한다.
begin
    insert into dept values(850, null, null);
exception
    when  ex_null then
        dbms_output.put_line('NULL을 넣을 수 없습니다.');
end;
/

--TODO: 부서테이블에서(DEPT) 부서_ID가 100인 부서를 삭제하는 코드 작성.
--      100번 부서는 EMP에서 참조하므로 'ORA-02292: integrity constraint (SCOTT.FK_EMP_DEPT) violated - child record found' 오라클 에러 발생한다.
--      발생하는 에러에 예외이름을 만들어 EXCEPTION 블록에서 처리하는 코드를 작성하시오.

--declare 
create or replace procedure del_dept_sp(p_dept_id   dept.dept_id%type)
is
    ex_fk_violate exception;
    pragma exception_init(ex_fk_violate, -02292);
begin
    delete from dept where dept_id = p_dept_id;
    dbms_output.put_line('삭제 되었습니다. 다음 작업 진행');
    commit;
exception
    when ex_fk_violate then
        dbms_output.put_line('참조 데이터가 있어서 삭제 할 수 없습니다.');
end;
/
exec del_dept_sp(9900);
exec del_dept_sp(100);

select * from dept order by 1 desc;

/* ***************************************************************************************************************
예외 발생시키기
 - 예외이름 선언
 
 - RAISE 예외이름
*************************************************************************************************************** */
--삭제할 부서 ID가 없으면 예외 발생시키기
declare
    v_id binary_integer:=3000`;
    v_cnt binary_integer;
    
    ex_not_found exception;
begin
    select count(*) into v_cnt from dept where dept_id = v_id;
    if  v_cnt = 0 then --삭제할 부서가 없다. -> 예외발생
        raise ex_not_found;
    end if;
    delete from dept where dept_id = v_id;
    dbms_output.put_line('삭제 완료');
exception
    when ex_not_found then
        dbms_output.put_line('삭제할 부서가 없습니다. 로그 테이블에 insert');
end;
/
select count(*)  from dept where dept_id = ;
select * from dept order by 1 desc;


--TODO: EMP_ID가 832번인 직원의 이름을 UPDATE하는데 
--832번인 직원이 없는 경우 사용자 정의 예외를 만들어 발생 시키시오.
declare
    ex_not_found exception;
    v_cnt binary_integer;
    v_emp_id emp.emp_id%type := &e_id;--변경할 emp_id
begin
    select count(*) into v_cnt
    from   emp where emp_id = v_emp_id;
    
    if v_cnt = 0 then
        raise ex_not_found;
    end if;
    
    update  emp
    set     emp_name = emp_name
    where   emp_id = v_emp_id;
    commit;
exception
    when  ex_not_found then
        dbms_output.put_line('없는 id의 직원이므로 변경이 안되었습니다.');
end;
/

declare
    ex_not_found exception;
--    v_cnt binary_integer;
    v_emp_id emp.emp_id%type := &e_id;--변경할 emp_id
begin
--    select count(*) into v_cnt
--    from   emp where emp_id = v_emp_id;
--    
--    if v_cnt = 0 then
--        raise ex_not_found;
--    end if;
    
    --insert/delete/update 구문이 먼저 실행된 경우.
    
    update  emp
    set     emp_name = emp_name
    where   emp_id = v_emp_id;
        
    if sql%notfound then
        raise ex_not_found;
    end if;
    dbms_output.put_line('수정');
    commit;
exception
    when  ex_not_found then
        dbms_output.put_line('없는 id의 직원이므로 변경이 안되었습니다.');
        rollback; --실행부에서 예외 발생전까지 처리된 변경을 원복시키기.
end;
/

--TODO: 부서 ID를 받아 부서를 삭제하는 프로시저 작성
-- EMP 테이블에서 삭제하려는 부서를 참조하는 행이 있는지 확인 한뒤 없으면 
--삭제하고 있으면 사용자정의 예외를 발생시킨 뒤 EXCEPTION 블록에서 처리
declare
    ex_fk_violate exception;
    v_cnt binary_integer;
    v_dept_id  dept.dept_id%type:=&d_id;
begin
    select count(*) 
    into v_cnt
    from  emp
    where dept_id = v_dept_id;
    
    if v_cnt <> 0 then
        raise ex_fk_violate;
    end if;
    
    delete from dept where dept_id = v_dept_id;
    commit;
    dbms_output.put_line('삭제완료');
exception 
    when  ex_fk_violate then
        dbms_output.put_line('참조되고 있는 부서');
end;
/

/* ****************************************************************************************************************************************************
RAISE_APPLICATION_ERROR
예외 선언 없이 예외 코드와 예외메세지를 받아 예외를 발생시키는 프로시저
 - RAISE_APPLICATION_ERROR(예외코드, 예외 메세지)
    - 예외코드는 -20000 ~ -20999 사이의 숫자를 사용한다. 
**************************************************************************************************************************************************** */
declare
    ex_fk_violate exception;
    v_cnt binary_integer;
    v_dept_id  dept.dept_id%type:=&d_id;
begin
    select count(*) 
    into v_cnt
    from  emp
    where dept_id = v_dept_id;
    
    if v_cnt <> 0 then
        --raise ex_fk_violate;
        raise_application_error(-20001, v_dept_id||'는 참조되고 있는 부서이므로 삭제 안됨');
    end if;
    
    delete from dept where dept_id = v_dept_id;
    commit;
    dbms_output.put_line('삭제완료');
exception 
    when  others then
        dbms_output.put_line(sqlcode); --오라클 에러코드를 조회: sqlcode
        dbms_output.put_line(sqlerrm); --에러 메세지를 조회 : sqlerrm
end;
/


--TODO: 부서 ID를 받아 부서를 삭제하는 프로시저 작성
--      EMP 테이블에서 삭제하려는 부서를 참조하는 행이 있는지 확인 한 뒤 없으면 삭제하고 있으면 예외코드 -20100 번과 적당한 메세지를 넣어 사용자 정의 예외를 발생시킨뒤 EXCEPTION 블럭에서 처리.



