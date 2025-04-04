<?php
function analyzeTestResults($userId) {
    // Получаем результаты тестов
    $results = getTestResults($userId);
    
    // Анализируем данные (например, вычисление средних значений)
    $analysis = [];
    foreach ($results as $result) {
        $category = $result['category'];
        $score = $result['score'];
        if (!isset($analysis[$category])) {
            $analysis[$category] = [];
        }
        $analysis[$category][] = $score;
    }
    
    // Вычисляем средние значения
    foreach ($analysis as $category => $scores) {
        $analysis[$category] = array_sum($scores) / count($scores);
    }
    
    return $analysis;
}
?>