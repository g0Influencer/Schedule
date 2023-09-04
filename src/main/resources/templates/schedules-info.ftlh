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
<form action="/schedule/delete/${schedule.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Удалить запись"/>
</form>
<div>
    <p><a href="/schedule/edit/${schedule.id}">Редактировать запись</a></p>
</div>
</body>
</@t.template>