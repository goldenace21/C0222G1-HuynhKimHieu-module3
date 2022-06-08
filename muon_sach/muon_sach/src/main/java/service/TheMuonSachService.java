package service;

import models.TheMuonSach;
import repository.TheMuonSachRepository;
import java.util.List;

public class TheMuonSachService {
    TheMuonSachRepository theMuonSachRepository = new TheMuonSachRepository();

    public List<TheMuonSach> selectAll() {
        return theMuonSachRepository.selectAll();
    }

    public void create(TheMuonSach theMuonSach) {
        theMuonSachRepository.create(theMuonSach);
    }

    public void update(String maMuonSach) {
        theMuonSachRepository.update(maMuonSach);
    }
}
