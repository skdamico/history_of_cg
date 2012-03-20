<div class="stub" id='connection-form'>
    <form action='/connections/add' method='post' accept-charset='utf-8'>
        <ul class="required-fields all-fields">
            <li class="entry-name fields connection-fields">
                <input type='text' placeholder="Entry name" name='data[Entry][name]' value='' />
                <input type='hidden' class='entry-id' name='data[connection_id]' value='' />
            </li>
            <li class="entry-type fields connection-fields extra" style='display: none;'>
                <select class='entry-type-select' name='data[Entry][category_id]'>
                    <option value='' selected="selected">-- Type of Entry --</option>
                    <option value='1'>A Person</option>
                    <option value='2'>A Project</option>
                    <option value='3'>An Organization</option>
                    <option value='4'>An Event</option>
                </select>
            </li>
            <li class="entry-tags fields connection-fields extra" style='display: none;'>
                <input type='text' placeholder="Related tags" name='data[tags]' class='tags' />
            </li>
        </ul>
        <div class="cf"></div>
        <button>Connect entries</button>
    </form>
</div>
