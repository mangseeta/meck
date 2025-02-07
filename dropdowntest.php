<?php
include('condb.php');
$sql = "SELECT * FROM department ORDER BY dep_code asc";
$query = mysqli_query($condb, $sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Multiple Dropdown - itoffside.com</title>
 
    <link href="assets/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-5">
    <div class="card">
        <div class="card-body">
            <h3>การทำ Multiple Dropdown ด้วย Ajax เลือก 3 ขั้น</h3>
            <form>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="dpname">หน่วยงาน</label>
                        <select name="dep_code" id="depname" class="form-control">
                            <option value="">เลือกหน่วยงาน</option>
                            <?php while($result = mysqli_fetch_assoc($query)): ?>
                                <option value="<?php echo $result['dpname']?>">
								<?php echo $result['dpname']?>
								</option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="person1">ผู้เกี่ยวข้อง</label>
                        <select name="depname" id="ofname" class="form-control">
                            <option value="">เลือกผู้เกี่ยวข้อง</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="district">ตำบล</label>
                        <select name="district_id" id="district" class="form-control">
                            <option value="">เลือกตำบล</option>
                        </select>
                    </div>
                </div>                
            </form>
        </div>
    </div>
</div>
 
<script src="assets/jquery.min.js"></script>
<script src="assets/script.js"></script>
</body>
</html>
<?php
mysqli_close($condb);