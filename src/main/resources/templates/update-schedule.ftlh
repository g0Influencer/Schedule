<#import "blocks/template.ftlh" as t>
<@t.template user>
<body>
<h1>SCHEDULE</h1><hr>
<h4>Расписание занятий</h4>
<b>Название предмета: </b>${schedule.subject_name}<br>
<b>Название группы: </b>${schedule.party}<br>
<b>ФИО преподавателя: </b>${schedule.teacher_name}<br>
<b>День недели: </b>${schedule.week_day}<br>
<b>Время: </b>${schedule.time}<br>
<b>Номер аудитории: </b>${schedule.classroom_number}<br>
<hr>

<form action="/schedule/update-schedule/${schedule.id}" method="post">
    <div class="form-group">
        <label for="email">Название предмета</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">Название группы</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">Название предмета</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">Название предмета</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">ФИО преподавателя</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">День недели</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <div class="form-group">
        <label for="email">Номер аудитории</label>
        <input type="text" class="form-control " id="email" name="username">
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" style="width: 50%" class="btn btn-dark">Редактировать запись</button>
</form>

</body>
</@t.template>