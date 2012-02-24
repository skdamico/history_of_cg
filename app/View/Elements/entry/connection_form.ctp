<div class="stub" id='connection-form'>
    <form action='/connections/add' method='post' accept-charset='utf-8'>
        <ul class="required-labels all-labels">
            <li class="label-entry-name labels">Entry name <span class="required">*</span></li>
            <li class="label-entry-type labels extra">Type of entry <span class="required">*</span></li>
            <li class="label-entry-tags labels extra">Tags <span class="required">*</span></li>
        </ul>
        <ul class="required-fields all-fields">
            <li class="entry-name fields">
                <input type='text' name='data[Entry][name]' value='' />
                <input type='hidden' class='entry-id' name='data[connection_id]' value='' />
            </li>
            <li class="entry-type fields extra">
                <select class='entry-type-select' name='data[Entry][category_id]'>
                    <option value=''></option>
                    <option value='1'>A Person</option>
                    <option value='2'>A Project</option>
                    <option value='3'>An Organization</option>
                    <option value='4'>An Event</option>
                </select>
            </li>
            <li class="entry-tags fields extra">
                <input type='text' name='data[tags]' class='tags' />
            </li>
        </ul>
        <div class="cf"></div>
        <button>Create connection</button>
    </form>
</div>
