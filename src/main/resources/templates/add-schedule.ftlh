<#import "blocks/template.ftlh" as t>
<@t.template user>

    <form action="/schedule/create" method="post">
        <div class="form-group">
            <label for="email">Название предмета</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">Название группы</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">Название предмета</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">Название предмета</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">ФИО преподавателя</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">День недели</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <div class="form-group">
            <label for="email">Номер аудитории</label>
            <input type="email" class="form-control " id="email" name="username">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" style="width: 50%" class="btn btn-dark">Редактировать запись</button>
    </form>

    </body>
</@t.template>