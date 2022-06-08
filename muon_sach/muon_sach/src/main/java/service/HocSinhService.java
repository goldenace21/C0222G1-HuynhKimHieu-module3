package service;

import models.HocSinh;
import repository.HocSinhRepository;
import java.util.List;

public class HocSinhService {
    HocSinhRepository hocSinhRepository = new HocSinhRepository();
    public List<HocSinh> selectAll() {
        return hocSinhRepository.selectAll();
    }
}
