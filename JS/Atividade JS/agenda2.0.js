document.addEventListener('DOMContentLoaded', function() {  // Espera até que o conteúdo da página esteja completamente carregado
    const form = document.getElementById('agenda-form');  // Obtém o elemento do formulário pelo ID
    const taskInput = document.getElementById('task-input');  // Obtém o campo de input para o texto da tarefa pelo ID
    const taskDay = document.getElementById('task-day');  // Obtém o campo de input para o dia da tarefa pelo ID
    const taskMonth = document.getElementById('task-month');  // Obtém o campo de input para o mês da tarefa pelo ID
    const taskYear = document.getElementById('task-year');  // Obtém o campo de input para o ano da tarefa pelo ID
    const taskList = document.getElementById('agenda-list');  // Obtém a lista onde as tarefas serão exibidas pelo ID

    // Carregar tarefas do localStorage, se existirem. Caso contrário, inicializa um array vazio.
    const tasks = JSON.parse(localStorage.getItem('tasks')) || [];  // Recupera as tarefas do localStorage ou define um array vazio

    function renderTasks() {  // Função para renderizar as tarefas na tela
        taskList.innerHTML = '';  // Limpa a lista de tarefas antes de renderizar novamente
        tasks.forEach((task, index) => {  // Para cada tarefa no array tasks
            const li = document.createElement('li');  // Cria um novo item de lista (<li>)
            li.textContent = `${task.text} - ${task.day}/${task.month}/${task.year}`;  // Define o texto do item da lista (tarefa e data)
            if (task.completed) {  // Se a tarefa está marcada como concluída
                li.classList.add('completed');  // Adiciona a classe 'completed' para estilizar a tarefa como concluída
            }
            li.classList.add('animate__animated', 'animate__fadeIn');  // Adiciona classes de animação para que a tarefa apareça suavemente

            const completeButton = document.createElement('button');  // Cria um botão para concluir a tarefa
            completeButton.textContent = 'Concluir';  // Define o texto do botão como 'Concluir'
            completeButton.classList.add('complete');  // Adiciona uma classe de estilo para o botão
            completeButton.addEventListener('click', () => {  // Adiciona um evento de clique no botão
                task.completed = !task.completed;  // Alterna o estado de conclusão da tarefa
                localStorage.setItem('tasks', JSON.stringify(tasks));  // Salva as tarefas atualizadas no localStorage
                renderTasks();  // Re-renderiza as tarefas para refletir a mudança de estado
            });

            const removeButton = document.createElement('button');  // Cria um botão para remover a tarefa
            removeButton.textContent = 'Remover';  // Define o texto do botão como 'Remover'
            removeButton.addEventListener('click', () => {  // Adiciona um evento de clique no botão
                li.classList.add('animate__animated', 'animate__fadeOutRight');  // Adiciona uma animação de fade-out para remover a tarefa
                setTimeout(() => {  // Aguarda a animação de remoção terminar
                    tasks.splice(index, 1);  // Remove a tarefa do array de tarefas pelo índice
                    localStorage.setItem('tasks', JSON.stringify(tasks));  // Atualiza o localStorage com as tarefas restantes
                    renderTasks();  // Re-renderiza as tarefas para refletir a remoção
                }, 1000);  // Define o tempo da animação (1000ms = 1 segundo)
            });

            const buttonsDiv = document.createElement('div');  // Cria uma <div> para conter os botões de ação
            buttonsDiv.classList.add('buttons');  // Adiciona uma classe de estilo para os botões
            buttonsDiv.appendChild(completeButton);  // Adiciona o botão "Concluir" à div
            buttonsDiv.appendChild(removeButton);  // Adiciona o botão "Remover" à div

            li.appendChild(buttonsDiv);  // Adiciona a div com os botões ao item da lista
            taskList.appendChild(li);  // Adiciona o item da lista à lista de tarefas na página
        });
    }

    form.addEventListener('submit', function(event) {  // Adiciona um evento de envio de formulário
        event.preventDefault();  // Impede que a página seja recarregada ao enviar o formulário
        const taskText = taskInput.value.trim();  // Obtém o texto da tarefa, removendo espaços extras
        const taskDayValue = taskDay.value.trim();  // Obtém o valor do dia da tarefa
        const taskMonthValue = taskMonth.value.trim();  // Obtém o valor do mês da tarefa
        const taskYearValue = taskYear.value.trim();  // Obtém o valor do ano da tarefa
        if (taskText && taskDayValue && taskMonthValue && taskYearValue) {  // Verifica se todos os campos estão preenchidos
            tasks.push({  // Adiciona a nova tarefa ao array de tarefas
                text: taskText,  // Define o texto da tarefa
                day: taskDayValue,  // Define o dia da tarefa
                month: taskMonthValue,  // Define o mês da tarefa
                year: taskYearValue,  // Define o ano da tarefa
                completed: false  // Define que a tarefa começa como não concluída
            });
            localStorage.setItem('tasks', JSON.stringify(tasks));  // Salva as tarefas no localStorage
            renderTasks();  // Re-renderiza a lista de tarefas
            taskInput.value = '';  // Limpa o campo de entrada de texto
            taskDay.value = '';  // Limpa o campo de entrada do dia
            taskMonth.value = '';  // Limpa o campo de entrada do mês
            taskYear.value = '';  // Limpa o campo de entrada do ano
        }
    });

    renderTasks();  // Chama a função para renderizar as tarefas quando a página é carregada
});
