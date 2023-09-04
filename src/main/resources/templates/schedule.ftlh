<#import "blocks/template.ftlh" as t>
<@t.template user>
<form action="/" method="get">
    <div class="form-row">
        <div class="form-group col-md-2">
            <label for="searchCity">ФИО преподавателя</label>
            <select id="searchCity" class="form-control">
                <option value="">ФИО не выбрано</option>
                <option value="Москва">Иванов И.И.</option>
                <option value="Красноярск">Воронцов А.C.</option>
                <option value="Казань">Мирошин В.Г.</option>
            </select>
        </div>
        <div class="form-group col-md-10">
            <label for="searchWord">Поиск по группе</label>
            <input type="text" name="party" class="form-control"
                   id="searchWord">
        </div>
        <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
    </div>
</form>
<br><br>
    <hr>
    <div class="card-columns">
        <#list schedule as list>
            <a href="/schedule/${list.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <div class="card-body">
                        <h5 class="card-title">${list.subject_name}</h5>
                        <p class="card-text">${list.teacher_name}  ( ${list.classroom_number} )</p>
                        <h6 class="card-text"> ${list.week_day}</h6>
                        <p class="card-text"> ${list.time}</p>
                    </div>

                    <div class="card-footer">
                        ${list.party}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>


</@t.template>