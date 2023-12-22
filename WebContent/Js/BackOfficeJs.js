function showTable(tableId, titleId) {
    const tables = document.querySelectorAll('table');
    const titles = document.querySelectorAll('h2');

    tables.forEach(table => {
        table.classList.add('hidden');
    });

    titles.forEach(title => {
        title.classList.add('hidden');
    });

    const selectedTable = document.getElementById(tableId);
    const selectedTitle = document.getElementById(titleId);

    if (selectedTable && selectedTitle) {
        selectedTable.classList.remove('hidden');
        selectedTitle.classList.remove('hidden');
    }
}