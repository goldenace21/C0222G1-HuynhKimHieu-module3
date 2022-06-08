package service;

import models.Sach;
import repository.SachRepository;
import java.util.List;

public class SachService {
    SachRepository sachRepository = new SachRepository();
    public List<Sach> selectAll() {
     return sachRepository.selectAll();
    }
    public void updateDown(int id) {
        sachRepository.updateDown(id);
    }
    public void updateUp(int id) {
        sachRepository.updateUp(id);
    }
}
