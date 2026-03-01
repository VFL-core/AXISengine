inject {"webview"}

def handle_page(html):
    :show;("Page loaded! Length: " + len(html))

webview::hook-url("https://example.com", handle_page) +dimensions(1024 * 768) +resizable :show;
