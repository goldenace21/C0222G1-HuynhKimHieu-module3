package service;

import model.BenhNhan;
import repository.BenhNhanRepository;

public class BenhNhanService {
    BenhNhanRepository benhNhanRepository = new BenhNhanRepository();
    public void edit(BenhNhan benhNhan) {
        benhNhanRepository.edit(benhNhan);
    }
}
