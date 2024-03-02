
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

        <!-- Styles -->
        <style>
            button{
                display: inline-block;
            }
    
        </style>
    </head>
    <body class="antialiased">
        <div>
            <h1>To do list</h1>

            @foreach ($listNames as $item)
                <div class="flex" style="">
                    <p>Item: {{ $item->name }}</p>
                    <form action="{{ route('markComplete', $item->id) }}" method="post">
                        {{ csrf_field() }}
                        <button type="submit">Mark Complete</button>
                    </form>
                </div>
            @endforeach

            <form action="{{ route('saveItem') }}" method="post">
                {{ csrf_field() }}
                <label for="listName">list item</label>
                <input type="text" id="listname" name="listName" autofocus>
                <button type="Submit">Save item</button>
            </form>
        </div>
    </body>
</html>
