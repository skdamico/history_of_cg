<h2>Search Results</h2>

<input type='text' class='search-page-search' value='<?php echo str_replace('+', ' ', $query); ?>'/>
<button class='search-page-button'>Search</button>

<ol class='search-results'>
<?php foreach($results as $r): ?>
    <li>
        <a href='/entries/view/<?php echo $r['Entry']['slug']; ?>'><?php echo $r['Entry']['name']; ?></a>
    </li>
<?php endforeach; ?>
</ol>


<script>
    $(function() {
        $('.search-page-button').click(function() {
            var q = $(this).siblings('.search-page-search').val();
            window.location = '/search/entries/'+q.replace(/ /g, '+');
        });
    });
</script>
